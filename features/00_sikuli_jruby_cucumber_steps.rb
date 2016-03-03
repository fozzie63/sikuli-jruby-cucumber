###################################
# Step Definitions for Sikuli
# Written by Richard Foster
###################################

Given /^I click on "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			@screen.click"#{bitmap}"
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

Given /^I doubleclick on "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			@screen.doubleClick"#{bitmap}"
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

Given /^I rightclick on "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			  @screen.rightClick"#{bitmap}"
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

When /^I drag "(.*?)" to "(.*?)"$/ do |bitmap, destination|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			@screen.dragDrop("#{bitmap}",destination)
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

#Given /^I open the Firefox browser$/ do
#	@script.openApp("C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe"
#end

When /^I type "(.*?)"$/ do |text|
	@screen.type"#{text}"
end

When /^I type "(.*?)" and tab$/ do |text|
	@screen.type"#{text}"+ Key.TAB
end

When /^I use BACKSPACE$/ do
	@screen.type(Sikuli::KEY_BACKSPACE)
end

When /^I use TAB$/ do
	@screen.type("\t")
end

When /^I use CTRL A$/ do
	@screen.type("a", Sikuli::KEY_CTRL)
end

When /^I paste "(.*?)"$/ do |text|
	@screen.paste("#{text}")
end

When /^I wait for "(.*?)" to appear$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

When /^I wait for "(.*?)" to disappear$/ do |bitmap|
	begin
		@screen.waitVanish"#{bitmap}", 10
	rescue
		fail("The following bitmap was found: " + "#{bitmap}" + "\n")
	end
end

Then /^I should see "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

Then /^I should not see "(.*?)"$/ do |bitmap|
	begin
		@screen.waitVanish "#{bitmap}", 10
	rescue Exception => e
		#puts "Exception was raised: #{e.class}"
		fail("The following bitmap was found: " + "#{bitmap}" + "\n")
	end
end

Then /^I wait "(.*?)" seconds$/ do |delay|
	sleep "#{delay}".to_i
end

Then /^I wait upto "(.*?)" seconds for "(.*?)" to vanish$/ do |delay, bitmap|
	@screen.waitVanish "#{bitmap}", "#{delay}".to_i
end

When /^I uncheck all check boxes$/ do
	for x in @screen.findAll "jupiterCheckboxTicked.png"
		@screen.click "jupiterExportButton.png"
	end
end

# Make sikuli more robust
# from org.sikuli.script.natives import Vision
#Vision.setParameter("MinTargetSize", 6) # A small value such as 6 makes the matching algorithm be faster.
#Vision.setParameter("MinTargetSize", 18) # A large value such as 18 makes the matching algorithm be more robust.

#find("OK") return all regions with ok label
#Region.text return text in a region

# Beware using this cos the application is closed automatically after the job has finished
#@script.openApp("C:\\Program Files (x86)\\BBC\\Jupiter\\bin\\Jupiter.exe")

#popup("Hello World!\nHave fun with Sikuli!")

#while @screen.exists "#{bitmap}"
#	@screen.click "#{bitmap}"
#	sleep 1
#end
#loop do @screen.click "#{bitmap}"
#	sleep 1
#	break if not (@screen.exists "#{bitmap}")
#end

#STDOUT.write "Given I click on " + bitmap + "\n"

