<h1 align="center">Rails Tutorial</h1>
<h4 align="center">My personal repository for learning Ruby on Rails</h4>

<br>

<h3 align="center">Note</h3>
<p align="center">
Rails and Django share many concepts. For more conceptual notation, visit my <a href="https://www.github.com/idflores/django-tutorial">Django-Tutorial</a> repository.
</p>

<h3 align="center">Discussion</h3>
<p align="center">
The philosophy between Rails and Django are incredibly similar. From my research, the differences that spawn Rails development over Django are mostly driven by opinion specifically when concerning application routing and Rails "Convention over Configuration"
</p>

<br>

<h2 align="center">Ruby on Rails Tutorial</h2>
<h4 align="center">following <a href="http://guides.rubyonrails.org/getting_started.html">"Getting Started with Rails"</a></h4>

### Updating Ruby

#### Get Homebrew
from: [https://brew.sh](https://brew.sh)
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Remove `RVM` to install `rbenv` (optional)
(RECOMMENDED)

**Note:** in order to install `rbenv`, you may need to uninstall `RVM`. This [StackOverflow Response](https://stackoverflow.com/questions/3558656/how-can-i-remove-rvm-ruby-version-manager-from-my-system) proved to be a very useful guide to doing so...

**Note:** in order to completely remove `RVM`, I had to modify my `$PATH` by:
1. perform `echo $PATH` in your terminal
2. copy the output and remove all directories including `.../.rvm/...`
3. copy the new `$PATH`
4. open `~/.profile`
    * type `atom ~/.profile` in Terminal (or iTerm) to use the Atom editor
5. add the following
```bash
# ~/.profile
export $PATH="<the_modified_path>"
```
6. restart Terminal (or iTerm)
7. check `gem` is pointing to the right directory using:
```bash
gem env home
# /Users/<username>/.rbenv/versions/2.4.1/lib/ruby/gems/2.4.0
```

#### Install Ruby with `rbenv`
from: [https://gorails.com](https://gorails.com/setup/osx/10.12-sierra#ruby)
```bash
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

# reload the ~/.bash_profile file
source ~/.bash_profile

# Update Ruby
rbenv install 2.4.1
rbenv global 2.4.1

# Verify Ruby was installed
ruby -v
```

### Install Rails

```bash
gem install rails
```

### Create A New Rails Application

In the project directory, run:

```bash
rails new <app_name>
```

### Run the Rails server

```bash
cd <app_name>
bin/rails server
```

Using your favorite browser (please! no IE), type [`localhost:3000`](http://localhost:3000)

<br>

<h3 align="center">Controller</h3>

* handles requests for the given application
  * *routing* determines which controller receives which requests
  * *action* collects and serves information to *views*
* collects information

#### Generate Controllers

Within the Rails application directory:
```bash
bin/rails generate controller <controller_name> <action_name>
```
**Note:** also generates an action called `<action_name>` (optional)

<br>

<h3 align="center">View</h3>

* handles how information is displayed
* uses eRuby (Embedded Ruby) to write view templates
  * uses the `.erb` file extension

<br>

<h2 align="center">Development Environment</h2>

### Tools

* [MacOS](https://apple.com) v10.12.5
* [Atom.io](https://atom.io) v1.17.2
* [iTerm2](https://www.iterm2.com) v3.0.15
* [Ruby](https://ruby-lang.org) v2.4.1p111
* [Homebrew](https://brew.sh) v1.2.1
* [rbenv](https://github.com/rbenv/rbenv) v1.1.0
* [Ruby on Rails](http://rubyonrails.org) v5.1.1
* [SQLite3](https://www.sqlite.org/) v3.16.0

### Resources

* Excellent [Atom.io](https://atom.io) Rails development packages [discussion](https://www.reddit.com/r/rails/comments/52q2s4/atomio_packages_for_ruby_on_rails/)
