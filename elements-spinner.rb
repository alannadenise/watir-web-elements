require 'watir-webdriver'
#put in the below two lines to make the script run as a test
require 'test/unit'
include Test::Unit::Assertions

#testing out watir element jquery spinner and asserting the value on the alert box

#multiple tests can be run in one class 
class AssertionTest1 < Test::Unit::TestCase
    #tests need to be defined as 'def test_...'
    def test_that_popup_value_should_equal_5
        b = Watir::Browser.new 
        b.goto "http://jqueryui.com/resources/demos/spinner/default.html"
        sleep (2)
        b.button(:id => 'setvalue').click
        sleep (2)
        b.a(:class => 'ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only').click
        sleep (2)
        b.button(:id => 'getvalue').click
        #the line below is the assertion of the value on the alert box
        assert(b.alert.text =="6", "value was not 6")
        sleep (2)
        b.alert.ok
        sleep (2)
        b.close
    end
end


