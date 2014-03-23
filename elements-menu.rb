require 'watir-webdriver'

#testing out watir element jquery menu 

b = Watir::Browser.new 
b.goto "http://jqueryui.com/resources/demos/menu/default.html"

b.ul(:id => 'menu').wait_until_present
b.a(:id => 'ui-id-5').hover
b.a(:id => 'ui-id-10').wait_until_present
b.a(:id => 'ui-id-10').click

