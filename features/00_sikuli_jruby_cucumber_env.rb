###################################
# Environment file for Sikuli
# Written by Richard Foster
###################################

require 'java'
require 'sikuli'
require '/Users/rfo12/Downloads/SikuliX/sikuli-script.jar'
#require '/Applications/Sikuli-IDE.app/Contents/Resources/Java/sikuli-script.jar'

Sikuli::Config.run do |config|
	config.image_path = "images\\"
	config.logging = false
	config.highlight_on_find = false
end

class SikuliNavigator
	def initialize
		@screen = Sikuli::Screen.new                  # from the sikuli gem
		
		#@script = org.sikuli.script.SikuliScript.new  # from the original Java lib
		# A small value such as 6 makes the matching algorithm be faster.
		# A large value such as 18 makes the matching algorithm be more robust.
		# @vision = org.sikuli.script.natives.Vision.new
		# org.sikuli.script.natives.Vision.setParameter("MinTargetSize", 18)
	end
end

World { SikuliNavigator.new }
