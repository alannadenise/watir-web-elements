require 'watir-webdriver'

#testing out watir element datepicker

b = Watir::Browser.new 
b.goto "http://jqueryui.com/resources/demos/datepicker/default.html"


b.text_field(:id, "datepicker").set("")
month = b.span(:class, "ui-datepicker-month").text
year = b.span(:class, "ui-datepicker-year").text
while  !(month == "February" && year == "2013")
    b.link(:text, "Prev").click
    month = b.span(:class, "ui-datepicker-month").text
    year = b.span(:class, "ui-datepicker-year").text
end
puts month
puts year

b.link(:text, "14").click

#b.screenshot.save 'testscreenshot.png'