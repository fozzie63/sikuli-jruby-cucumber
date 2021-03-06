# sikuli-jruby-cucumber
Running Sikuli with JRuby and Cucumber on MacOS

1) INSTALL RVM (Ruby Virtual Machine)  
\curl -L https://get.rvm.io | sudo bash -s stable  
rvm install jruby-1.7.19  
rvm use jruby-1.7.19 --default  

2) INSTALL RUBY GEMS  
gem install gherkin rspec cucumber sikulix  

3) CHECK SYSTEM ENVIRONMENT  
rvm list rubies  
Should be set to "=> jruby-1.7.19 [ x86_64 ]"  

rvm gemset list  
Shows where your gems are stored  

gem list --local  
Shows which gems you have installed  

4) INSTALL SIKULIX 1.1.0  
https://launchpad.net/sikuli/sikulix/1.1.0  
Create SikuliX folder under root and download the sikulixsetup-1.1.0.jar file to that location  
Double click the setup file and select options 1 (Python and JRuby) and 2
Click Yes to the remaining dialogue screens.  
SikuliX app is created in the folder. Move this to Applications.  

5) MacOS Accessibility permission  
Allow the app to take control of computer  
Goto System Preferences > Security & Privacy > Accessibility  
Add SikuliX to the list	  

6) Create Environment Variables  
export  (to display environment variables)  
vi ~/.bash_profile (and add the following)  
export SIKULIX_HOME=/SikuliX  
export SIKULIXAPI_JAR=$SIKULI_HOME/sikulixapi.jar  
source ~/.bash_profile (to inject new variables into environment)  

7) TEST PREPARATION  
Create a shortcut to Chrome on the Desktop and ensure it is visible  
Open Chrome and open a new tab and then quit Chrome  
Amend the Image path in sikulix_jruby_cucumber_env.rb

8) RUN THE TEST  
cd sikuli-jruby-cucumber  
cucumber features/verify_google_search_button.feature  

9) CREATING FURTHER TESTS  
Its necessary to create the png files using the SikuliX IDE. The Grab tool on MacOS does not work (and even when I tried to halve the resolution of the file in Preview Sikuli still wouldn't have it.)   
Open up SikuliX IDE and capture the elements that you want.  
Once finished save as a Sikuli source file(.sikuli).  
Right click on the Sikuli source file in Finder and select "Show Package Contents". The png files are contained here.  
You will need to give the png files more user friendly names.  
These can then be copied to your image file location.  




