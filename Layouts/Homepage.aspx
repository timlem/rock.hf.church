<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" Inherits="Rock.Web.UI.RockPage" %>

<script runat="server">
    protected void Page_Load( object sender, EventArgs e )
    {
        HtmlGenericControl siteHeader = ( HtmlGenericControl ) Master.FindControl( "siteHeader" );
        if ( siteHeader != null )
        {
            siteHeader.Attributes["class"] += " overlay-header white-style";
        }
    }
</script>
<asp:Content ID="ctFeature" ContentPlaceHolderID="feature" runat="server">

    <section class="main-feature embed-responsive embed-responsive-16by9">
        <div class="container-fluid">
            <div class="row">
                <Rock:Zone Name="Feature" runat="server" />
            </div>
        </div>
    </section>

</asp:Content>

<asp:Content ID="ctMain" ContentPlaceHolderID="main" runat="server">

    <div class="container-fluid">
        <div class="row">
            <Rock:Zone Name="Sub Feature" runat="server" />
        </div>
    </div>

    <main class="container">

        <!-- Start Content Area -->

        <!-- Ajax Error -->
        <div class="alert alert-danger ajax-error" style="display: none">
            <p><strong>Error</strong></p>
            <span class="ajax-error-message"></span>
        </div>


        <div class="row">
            <div class="col-md-12 clearMinHeight">
                <Rock:Zone Name="Section A" runat="server" />
            </div>
        </div>

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

        <!-- End Content Area -->

    </main>

    <div class="container-fluid">
        <div class="row">
            <Rock:Zone Name="Lower Feature" runat="server" />
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12 clearMinHeight">
                <Rock:Zone Name="Section Bottom" runat="server" />
            </div>
        </div>
    </div>

</asp:Content>

