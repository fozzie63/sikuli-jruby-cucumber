# sikuli-jruby-cucumber
Running Sikuli with JRuby and Cucumber

INSTALLATION INSTRUCTIONS FOR MAC

1) INSTALL RVM (Ruby Virtual Machine)
\curl -L https://get.rvm.io | sudo bash -s stable
rvm install ruby-2.2.1
rvm use ruby-2.2.1 --default

2) INSTALL RUBY GEMS UPDATE
gem install rubygems-update cucumber rspec gherkin

3) INSTALL BREW
Install brew if you don’t already have it -
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

4) INSTALL JRUBY
brew install jruby

5) Install pristine gems
gem pristine executable-hooks --version 1.3.2
gem pristine ffi --version 1.9.10
gem pristine gem-wrappers --version 1.2.7
gem pristine gherkin --version 2.12.2
gem pristine json --version 1.8.3
gem pristine unf_ext --version 0.0.7.1

6) INSTALL gems using JRuby
jruby -S gem install cucumber rspec-expectations sikuli

7) Install Sikuli
https://launchpad.net/sikuli/sikulix/1.0.1
Double click setup jar
Click options 2 and 4

vi /Users/rfo12/.rvm/gems/ruby-2.2.1/gems/sikuli-0.3.0/lib/sikuli/platform.rb
Amend path to /Users/rfo12/Downloads/sikulixapi.jar

6) RUN A TEST
jruby -S cucumber -f features/01_source_tree.feature

7) SETUP ENVIRONMENT VARIABLES
Display all environment variables -
>export

sudo vi /etc/launchd.conf
Enter the following lines:

setenv JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk
setenv MAVEN_OPTS "-Xmx1024M -XX:MaxPermSize=512m"
setenv M2_HOME /RichardsQaTestsShared/apache-maven-3.0.4
setenv M2 /RichardsQaTestsShared/apache-maven-3.0.4/bin
setenv JENKINS_HOME /Jenkins
