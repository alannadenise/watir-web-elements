require 'watir-webdriver'

#testing out watir element jquery accordion

b = Watir::Browser.new 
b.goto "http://jqueryui.com/resources/demos/accordion/default.html"
b.h3(:id => 'ui-accordion-accordion-header-1').click
sleep (2)
b.h3(:id => 'ui-accordion-accordion-header-3').click
sleep (2)
b.h3(:id => 'ui-accordion-accordion-header-0').click
sleep (2)
b.h3(:id => 'ui-accordion-accordion-header-2').click
sleep (2)