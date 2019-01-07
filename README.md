# Highlands Fellowship Rock Theme
Rock Theme for Highlands Fellowship, http://www.highlandsfellowship.com/ (new design, http://test.hfhub.net/hf/)

http://my.hf.church

http://rock.hf.church 

## Needed Page Attributes
* Page Attribute for the Page's Header Images
  * Entity Type: Page
  * Name: Header Image
  * Description: Page header background image, example size: 5184x1670
  * Key: HeaderImage
  * Field Type: Image
  * File Type: "Content Channel Image (DB stored)" or "Media File (Filesystem)"

## Blocks in base template
* Top Bar Content Zone

  * Top Bar Content, HTML Block

    * Settings

      * Context Name: TopBarContent

    * Content

      * Lava/HTML: 

        ```html
        <div id="churchonline_counter">
           <div class="live">
              <a href="http://live.highlandsfellowship.com.com/" target="_parent" style="text-decoration: none"><span style="color: #ffffff; font-weight: normal; font-size: 10px; line-height: 16px; padding-right: 5px;">Next Live Online Experience: </span><span></span>
              <span
                 style="color: #ffffff; font-weight: normal; font-size: 10px; line-height: 16px; border-left: 1px solid #555; padding: 0 8px; text-align: center; display: inline-block; padding-right: 15px; padding-left: 15; border-right: 1px solid #555;">Join Us Now</span>
              </a>
           </div>
           <a href="http://live.highlandsfellowship.com/" target="_parent" style="text-decoration: none">
              <ul class="time">
                 <li style="padding-left: 0px;"><span>Next Live Online Experience: </span></li>
                 <li><span class="days"></span><span></span><span class="label">days</span></li>
                 <li><span class="hours"></span><span></span><span class="label">hours</span></li>
                 <li><span class="minutes"></span><span></span><span class="label">minutes</span></li>
                 <li><span class="seconds"></span><span></span><span class="label">seconds</span></li>
              </ul>
           </a>
        </div>
        ```

* Top Bar Social Zone

  * Top Bar Social, HTML Block

    * Settings

      * Context Name: TopBarSocial

    * Content

      * Lava/HTML:

        ```html
        <a href="http://www.twitter.com/highlands" title="Twitter" class="wpex-twitter wpex-social-btn wpex-social-btn-flat wpex-social-color-hover wpex-round" target="_blank"><span class="fa fa-twitter" aria-hidden="true"></span><span class="screen-reader-text">Twitter Profile</span></a>
        <a href="http://www.facebook.com/highlands" title="Facebook" class="wpex-facebook wpex-social-btn wpex-social-btn-flat wpex-social-color-hover wpex-round" target="_blank"><span class="fa fa-facebook" aria-hidden="true"></span><span class="screen-reader-text">Facebook Profile</span></a>
        <a href="http://www.instagram.com/highlandsfellowship" title="Instagram" class="wpex-instagram wpex-social-btn wpex-social-btn-flat wpex-social-color-hover wpex-round"                                target="_blank"><span class="fa fa-instagram" aria-hidden="true"></span><span class="screen-reader-text">Instagram Profile</span></a>
        <a href="http://www.youtube.com/user/hflive" title="Youtube" class="wpex-youtube wpex-social-btn wpex-social-btn-flat wpex-social-color-hover wpex-round" target="_blank"><span class="fa fa-youtube" aria-hidden="true"></span><span class="screen-reader-text">Youtube Profile</span></a>
        <a href="http://www.vimeo.com/hf" title="Vimeo" class="wpex-vimeo wpex-social-btn wpex-social-btn-flat wpex-social-color-hover wpex-round" target="_blank"><span class="fa fa-vimeo-square" aria-hidden="true"></span><span class="screen-reader-text">Vimeo Profile</span></a>
        <a href="mailto:info@highlandsfellowship.com" title="Email" class="wpex-email wpex-social-btn wpex-social-btn-flat wpex-social-color-hover wpex-round"><span class="fa fa-envelope" aria-hidden="true"></span><span class="screen-reader-text">Email Profile</span></a>
        ```

- Header Zone

  - HLF Header, HTML Block
    - Settings
      - Context Name: ExternalSiteHeaderText
    - HTML
      - `<a href="~/page/1" title="Highlands Fellowship" rel="home" class="main-logo"><img src="~~/Assets/images/HF-Logo-white-header1.png" alt="Highlands Fellowship" class="logo-img" data-no-retina /></a>`

- Navigation Zone

  - Page Menu, Page Menu Block
    - Number of Levels: 3
    - Root Page: External Homepage
    - Template: `{% include '~~/Assets/Lava/PageNav.lava' %}`

- Social Footer Zone (not on homepage layout)

  - Share with Others, HTML Content Block
  - Context Name: ShareWithOthers
  - Content: `{% include '~~/Assets/Lava/ShareWithOthers.lava' %}`

- Footer Callout Zone (not on homepage layout)

  - Watch Live, HTML Content Block
  - Context Name: WatchLive
  - Content: `<a href="http://app.highlandsfellowship.com" class="theme-button" title="Watch Live" target="_blank">Watch Live</a>`

- Footer Menu Zones (1-4)

  - Footer Menu ## (1-4), Page Menu Block
    - Number of Levels: 3
    - Root Page: <section title> (example New to Highlands)
    - Include Page List:
      - Manual list of links, for example:
      - New to Highlands    ~/page/241
      - What We Believe    ~/page/242
      - Locations    ~/page/243
    - Template: `{% include '~~/Assets/Lava/PageNavFooterList.lava' %}`

- Footer Zone

  - Footer Content, HTML Block

    - Settings

      - Context Name: FooterAddress
      - CSS Class: pull-left

    - Content

      - HTML/Lava:

      - ```html
        Copyright <a href="~/page/1">{{ 'Global' | Attribute:'OrganizationName' }}.</a> - All Rights Reserved <span class="fa fa-phone" style="color: #fff;margin-left: 5px;margin-right: 5px;"></span> {{ 'Global' | Attribute:'OrganizationPhone' }} <span class="fa fa-envelope" style="color: #fff;margin-left: 20px;margin-right: 5px;"></span> {{ 'Global' | Attribute:'OrganizationEmail' }} <span class="fa fa-user" style="color: #fff;margin-left: 20px;margin-right: 5px;"></span> <a href="/Login" title="User Login" class="wpex-login">User Login</a>
        ```

  - Login Status Block

    - Advanced Settings > CSS Class
      - `pull-left dropup`
