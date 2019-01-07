$(document).ready(function ()
{
  $("[id*='searchBarDesktop']").val("");
  $('.dropdown-submenu > a').on("click", function (e)
  {
    if (!this.testVar)
    {
      $(this).next('ul').toggle();
      e.stopPropagation();
      e.preventDefault();
      this.testVar = true;
      setTimeout(function (param1)
      {
        param1.testVar = false;
      }, 3000, this);
    } 
  });
  $('#site-scroll-top').on("click", function (e)
  {
    $('body').animate({ scrollTop: 0 }, 'slow');
    return false;
  });
  $('a.wpex-lightbox-group-item').click(function (event)
  {
    event.preventDefault();
    var content = $('.modal-body');
    content.empty();
    var title = $(this).data("title");
    $('.modal-title').html(title);
    content.html("<img src='" + $(this).attr("href")+"' class='img-responsive' />");
    $(".modal-profile").modal({ show: true });
  });
});