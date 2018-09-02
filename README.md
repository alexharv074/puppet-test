# Puppet test

## Usage

To puppet apply a class:

~~~ text
bundle exec puppet apply \
  --modulepath=spec/fixtures/modules \
  --hiera_config=spec/fixtures/hiera/hiera.yml manifests/init.pp
~~~

To run the tests:

~~~ text
bundle exec rake spec_prep
bundle exec rake spec_alone
~~~
