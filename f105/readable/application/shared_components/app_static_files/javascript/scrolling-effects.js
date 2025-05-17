// Smooth scrolling for classic report pagination
$(document).on('click', '.t-Report-pagination a', function(e) {
  e.preventDefault();
  var target = $(this).attr('href');
  
  // Scroll to top of report
  $('html, body').animate({
    scrollTop: $('.t-Report').offset().top
  }, 1800);
  
  // Then execute the pagination navigation
  setTimeout(function() {
    window.location.href = target;
  }, 1800);
});

// Smooth scrolling for in-page links within classic reports
$(document).on('click', '.t-Report-cell a[href^="#"]', function(e) {
  e.preventDefault();
  var target = $(this).attr('href');
  $(target).get(0).scrollIntoView({
    behavior: 'smooth',
    block: 'start'
  });
});