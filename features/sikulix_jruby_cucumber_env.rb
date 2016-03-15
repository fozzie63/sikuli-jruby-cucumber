#########################################################
# Environment file  
# SikuliX, JRuby, Cucumber on MacOS
# Written by Richard Foster
# Date: 15/03/2016
#########################################################

require "sikulix/platform"
Sikulix::Platform.check_and_require
require "sikulix/sikulix.rb"
Sikulix::ImagePath.add("/Users/rfo12/Downloads/sikuli-jruby-cucumber/images/")
require '/SikuliX/sikulixapi.jar'

class SikuliNavigator
	def initialize
		@screen = Sikulix::Screen.new                  # from the sikuli gem
		
		#@script = org.sikuli.script.SikuliScript.new  # from the original Java lib
		# A small value such as 6 makes the matching algorithm be faster.
		# A large value such as 18 makes the matching algorithm be more robust.
		# @vision = org.sikuli.script.natives.Vision.new
		# org.sikuli.script.natives.Vision.setParameter("MinTargetSize", 18)
	end
end

World { SikuliNavigator.new }
