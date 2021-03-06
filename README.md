<h1 align="center">Rails Tutorial</h1>
<h4 align="center">My personal repository for learning Ruby on Rails</h4>

<br>

<h3 align="center">Note</h3>
<p align="center">
Rails and Django share many concepts. For more conceptual notation, visit my <a href="https://www.github.com/idflores/django-tutorial">Django-Tutorial</a> repository.
</p>

<h3 align="center">Discussion</h3>
<p align="center">
The philosophy between Rails and Django are incredibly similar. From my research, the differences that spawn Rails development over Django are mostly driven by opinion specifically when concerning <a href="http://guides.rubyonrails.org/routing.html">application routing</a> and Rails' "Convention over Configuration". This is really the key philosophical difference, here, that drives the majority of programming differences between it and Django. By "convention", Rails includes tools such as Coffeescript, Sass, and the <a href="http://guides.rubyonrails.org/working_with_javascript_in_rails.html">jQuery Unobtrusive Adapter</a> out of the box. However, Django's emphasis on user configuration seems to allow for more freedom for seasoned developers.
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
2. copy the output and remove all directories including `.../.rvm/...` in a text editor
3. copy the new `$PATH`
4. perform command in terminal
```bash
export PATH=<paste_new_$PATH>
```
5. restart Terminal (or iTerm)
6. check `gem` is pointing to the right directory using:
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

**Note:** the development server reloads your files on every save while in the development environment

<br>

<h3 align="center">Controller</h3>

#### Highlights

* handles requests for the given application
  * *routing* determines which controller receives which requests
    * `config/routes.rb`
    * [documentation](http://guides.rubyonrails.org/routing.html)
  * *action* collects and serves information to *views*
* collects information
* it is convention to implement CRUD actions in this order:
  * index, show, new, edit, create, update, destroy

#### Generate Controllers

Within the Rails application directory:
```bash
bin/rails generate controller <controller_name> <action_name>
```
**Note:** also generates an action called `<action_name>` (optional)

<br>

<h3 align="center">View & Templates</h3>

#### Highlights

* handles how information is displayed
* uses eRuby (Embedded Ruby) to write view templates
  * uses the `.erb` file extension
* supports [partial files](http://guides.rubyonrails.org/layouts_and_rendering.html) to prevent duplication in templates
  * by convention, partial file names begin with an `_` (underscore)
    * Example: `.../_<fileName>.html.erb`
  * heavily uses [Resource-Oriented Style](http://api.rubyonrails.org/v5.1.1/classes/ActionView/Helpers/FormHelper.html#method-i-form_for-label-Resource-oriented+style)

<br>

<h3 align="center">Model</h3>

#### Highlights

* manages databases for the application
  * concept includes both `models/` and `db/` directories
* [*migrations*](http://guides.rubyonrails.org/active_record_migrations.html) ruby classes designed to create and modify database tables
  * Rails uses `rake` commands to run migrations
  * naming convention includes a timestamp
    * Example: `db/migrate/YYYYMMDDHHMMSS_<action_name>_<model_name>.rb`
  * actions defined in Rails generated migration are *reversible*
* includes data validation methods [documentation](http://guides.rubyonrails.org/active_record_validations.html)
* supports [Active Record Association](http://guides.rubyonrails.org/association_basics.html)

#### Generate Models

Within the Rails application directory:
```bash
bin/rails generate model <model_name> <attribute>:<type>
```
**Note:** also generates an attribute called <attribute> of type <type> (optional)

#### Run migrations

Within the Rails application directory:
```bash
bin/rails db:migrate
```
**Note:** command only functional in the development environment

<h3 align="center">Authentication</h3>

#### Highlights

* Rails supports basic HTTP Authentication
* add-on authentication gems may also be used
  * [Devise](https://github.com/plataformatec/devise) rails engine
  * [Authlogic](https://github.com/binarylogic/authlogic)
* More on [Rails Authentication & Security](http://guides.rubyonrails.org/security.html)

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
