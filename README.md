bundle add rspec-rails
Fetching gem metadata from https://rubygems.org/...........
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Fetching gem metadata from https://rubygems.org/...........
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Using rake 13.0.6
Using concurrent-ruby 1.1.10
Using minitest 5.15.0
Using builder 3.2.4
Using erubi 1.10.0
Using nio4r 2.5.8
Using websocket-extensions 0.1.5
Using rack 2.2.3
Using mini_mime 1.1.2
Using racc 1.6.0
Using io-wait 0.2.1
Using timeout 0.2.0
Using strscan 3.0.1
Using bindex 0.8.1
Using msgpack 1.4.5
Using bundler 2.2.3
Using io-console 0.5.11
Using diff-lcs 1.5.0
Using method_source 1.0.0
Using thor 1.2.1
Using zeitwerk 2.5.4
Using pg 1.3.5
Using rspec-support 3.11.0
Using i18n 1.10.0
Using tzinfo 2.0.4
Using puma 5.6.4
Using websocket-driver 0.7.5
Using rack-test 1.1.0
Using mail 2.7.1
Using crass 1.0.6
Using digest 3.1.0
Using activesupport 7.0.2.3
Using net-protocol 0.1.2
Using bootsnap 1.11.1
Using reline 0.3.1
Using rspec-core 3.11.0
Using rspec-expectations 3.11.0
Using marcel 1.0.2
Using nokogiri 1.13.3 (x86_64-darwin)
Using activemodel 7.0.2.3
Using net-imap 0.2.3
Using net-pop 0.1.1
Using globalid 1.0.0
Using irb 1.4.1
Using rails-dom-testing 2.0.3
Using net-smtp 0.3.1
Using activerecord 7.0.2.3
Fetching rspec-mocks 3.11.1
Using loofah 2.15.0
Using sprockets 4.0.3
Using activejob 7.0.2.3
Using rails-html-sanitizer 1.4.2
Using debug 1.5.0
Using actionview 7.0.2.3
Using actionpack 7.0.2.3
Using jbuilder 2.11.5
Using actioncable 7.0.2.3
Using railties 7.0.2.3
Using sprockets-rails 3.4.2
Using importmap-rails 1.0.3
Using stimulus-rails 1.0.4
Using turbo-rails 1.0.1
Using web-console 4.2.0
Using activestorage 7.0.2.3
Using actionmailer 7.0.2.3
Using actionmailbox 7.0.2.3
Using actiontext 7.0.2.3
Using rails 7.0.2.3
Installing rspec-mocks 3.11.1
Using rspec-rails 5.1.1
learnacademy@LEARNs-Air-2 wildlife_side % rails generate rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb

rails db:create
Created database 'wildlife_side_development'
Created database 'wildlife_side_test'

rails g resource Animal common_name:string latin_name:string kingdom:string
invoke  active_record
create    db/migrate/20220331220108_create_animals.rb
create    app/models/animal.rb
invoke    rspec
create      spec/models/animal_spec.rb
invoke  controller
create    app/controllers/animals_controller.rb
invoke    erb
create      app/views/animals
invoke    rspec
create      spec/requests/animals_spec.rb
invoke    helper
create      app/helpers/animals_helper.rb
invoke      rspec
create        spec/helpers/animals_helper_spec.rb
invoke  resource_route
 route    resources :animals

  rails db:migrate
  == 20220331220108 CreateAnimals: migrating ====================================
-- create_table(:animals)
   -> 0.0145s
== 20220331220108 CreateAnimals: migrated (0.0146s) ===========================

rails g resource Sighting latitude:float longitude:float date:datetime
      invoke  active_record
      create    db/migrate/20220401015523_create_sightings.rb
      create    app/models/sighting.rb
      invoke    rspec
      create      spec/models/sighting_spec.rb
      invoke  controller
      create    app/controllers/sightings_controller.rb
      invoke    erb
      create      app/views/sightings
      invoke    rspec
      create      spec/requests/sightings_spec.rb
      invoke    helper
      create      app/helpers/sightings_helper.rb
      invoke      rspec
      create        spec/helpers/sightings_helper_spec.rb
      invoke  resource_route
       route    resources :sightings

       rails db:migrate
       == 20220401015523 CreateSightings: migrating ==================================
       -- create_table(:sightings)
          -> 0.0136s
       == 20220401015523 CreateSightings: migrated (0.0137s) =========================
