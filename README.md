# Translate

Based on Peter Marklund's plugin found on https://github.com/mynewsdesk/translate

This plugin provides a web interface for translating Rails I18n texts from one locale to another. The plugin has been tested only with the simple I18n backend that ships with Rails. I18n texts are read from and written to YAML files under config/locales.

To translate to a new locale you need to add a YAML file for that locale that contains the locale as the top key and at least one translation.

Please note that there are certain I18n keys that map to Array objects rather than strings and those are currently not dealt with by the translation UI. This means that Rails built in keys such as date.day_names need to be translated manually directly in the YAML file.

To get the translation UI to write the YAML files in UTF8 you need to install the ya2yaml gem.

The translation UI finds all I18n keys by extracting them from I18n lookups in your application source code. In addition it adds all :en and default locale keys from the I18n backend.

- Updated: Each string in the UI now has an "Auto Translate" link which will send the original text to Google Translate and will input the returned translation into the form field for further clean up and review prior to saving.

## Rake Tasks

In addition to the web UI this plugin adds the following rake tasks:

translate:untranslated
translate:missing
translate:remove_obsolete_keys
translate:merge_keys
translate:google
translate:changed

The missing task shows you any I18n keys in your code that do not have translations in the YAML file for your default locale, i.e. config/locales/sv.yml.

The merge_keys task is supposed to be used in conjunction with Sven Fuch's Rails I18n TextMate bundle (http://github.com/svenfuchs/rails-i18n/tree/master). Texts and keys extracted with the TextMate bundle end up in the temporary file log/translations.yml. When you run the merge_keys rake task the keys are moved over to the corresponding I18n locale file, i.e. config/locales/sv.yml. The merge_keys task also checks for overwrites of existing keys by warning you that one of your extracted keys already exists with a different translation.

The google task is used for auto translating from one locale to another using Google Translate.

The changed rake task can show you between one YAML file to another which keys have had their texts changed.

## Installation

Add this line to your application's Gemfile:

    gem 'translate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translate

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/translate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
