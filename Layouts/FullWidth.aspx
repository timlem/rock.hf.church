<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" Inherits="Rock.Web.UI.RockPage" %>

<script runat="server">
    protected void Page_Load( object sender, EventArgs e )
    {
        // declare vars
        var rockPage = this.Page as Rock.Web.UI.RockPage;
        string _pageDescription = String.Empty;
        string _backgroundImage = "";
        string _currentPage = rockPage.PageId.ToString();

        if ( rockPage != null )
        {
            var pageCache = Rock.Web.Cache.PageCache.Read( rockPage.PageId );
            if ( pageCache != null )
            {
                bannerImage.Visible = pageCache.PageDisplayTitle;
                _backgroundImage = pageCache.GetAttributeValue( "HeaderImageURL" );
                if ( string.IsNullOrWhiteSpace( _backgroundImage ) )
                {
                    _backgroundImage = pageCache.GetAttributeValue( "HeaderImage" );
                }
            }
        }

        if ( !string.IsNullOrWhiteSpace( _backgroundImage ) )
        {
            bannerImage.Attributes["class"] += " background-image-page-header";
            if ( !_backgroundImage.Contains( "http" ) )
            {
                _backgroundImage = "/GetImage.ashx?guid=" + _backgroundImage;
            }
            bannerImage.Style.Add( "background-image", "url(\"" + _backgroundImage + "\")" );

            HtmlGenericControl siteHeader = ( HtmlGenericControl ) Master.FindControl( "siteHeader" );
            if ( siteHeader != null )
            {
                siteHeader.Attributes["class"] += " overlay-header white-style";
            }

            bannerImage.Controls.Add( new LiteralControl( "<span class='background-image-page-header-overlay style-dotted'></span>" ) );
        }
        else
        {
            bannerImage.Attributes["class"] += " centered-page-header";
        }
    }
</script>

<asp:Content ID="ctFeature" ContentPlaceHolderID="feature" runat="server">
    <header class="page-header" id="bannerImage" runat="server">
        <div class="container">
            <div class="row">
                <Rock:PageIcon ID="PageIcon" runat="server" />
                <h1 class="page-header-title" itemprop="headline">
                    <Rock:PageTitle ID="PageTitle" runat="server" />
                </h1>
                <Rock:Zone Name="Title Text" runat="server" />
                <Rock:PageBreadCrumbs ID="PageBreadCrumbs" runat="server" />
            </div>
        </div>
    </header>

    <div class="container-fluid">
        <div class="row">
            <Rock:Zone Name="Feature" runat="server" />
        </div>
    </div>
</asp:Content>

<asp:Content ID="ctMain" ContentPlaceHolderID="main" runat="server">

    <main>
        <!-- Ajax Error -->
        <div class="alert alert-danger ajax-error" style="display: none">
            <p><strong>Error</strong></p>
            <span class="ajax-error-message"></span>
        </div>


        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <Rock:Zone Name="Main" runat="server" />
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <Rock:Zone Name="Mid Feature" runat="server" />
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <Rock:Zone Name="Section A" runat="server" />
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <Rock:Zone Name="Lower Feature" runat="server" />
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <Rock:Zone Name="Section B" runat="server" />
                </div>
                <div class="col-md-4">
                    <Rock:Zone Name="Section C" runat="server" />
                </div>
                <div class="col-md-4">
                    <Rock:Zone Name="Section D" runat="server" />
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <Rock:Zone Name="Bottom Feature" runat="server" />
            </div>
        </div>

        <!-- End Content Area -->

    </main>

    <div class="container margin-v-lg">
        <div class="row">
            <div class="col-sm-12 socialFooter">
                <Rock:Zone Name="Social Footer" runat="server" />
            </div>
        </div>
    </div>

    <div class="container-fluid theme-color-1">
        <div class="row">
            <Rock:Zone Name="Footer Callout" runat="server" />
        </div>
    </div>

</asp:Content>

