require 'bundler/setup'
require 'sinatra/base'
require 'rack-rewrite'

# The project root directory
$root = ::File.dirname(__FILE__)

use Rack::Rewrite do
  r301 %r{^/2011/08/rails-3-0-10-jruby/?$}, 'http://arun.im/2011/rails-3-0-10-jruby/'
  r301 %r{^/2010/11/rake-migration-track-rake-tasks-versions/?$}, 'http://arun.im/2010/rake-migration-track-rake-tasks-versions/'
  r301 %r{^/2011/01/praise-for-agile-product-management-with-scrum/?$}, 'http://arun.im/2011/praise-for-agile-product-management-with-scrum/'
  r301 %r{^/2011/01/active-record/?$}, 'http://arun.im/2011/active-record/'
  r301 %r{^/2011/01/bundler/?$}, 'http://arun.im/2011/bundler/'
  r301 %r{^/2011/01/receiving-emails-rails3/?$}, 'http://arun.im/2011/receiving-emails-rails3/'
  r301 %r{^/2011/01/nosql/?$}, 'http://arun.im/2011/nosql/'
  r301 %r{^/2011/01/follow-deploy-early/?$}, 'http://arun.im/2011/follow-deploy-early/'
  r301 %r{^/2011/02/basicobject-introduced-ruby-1-9/?$}, 'http://arun.im/2011/basicobject-introduced-ruby-1-9/'
  r301 %r{^/2011/02/refactoring-environment/?$}, 'http://arun.im/2011/refactoring-environment/'
  r301 %r{^/2011/02/query-cache-rails/?$}, 'http://arun.im/2011/query-cache-rails/'
  r301 %r{^/2011/03/bundler-usage-manage-gemfile/?$}, 'http://arun.im/2011/bundler-usage-manage-gemfile/'
  r301 %r{^/2011/03/bundler-usage-installing-gems/?$}, 'http://arun.im/2011/bundler-usage-installing-gems/'
  r301 %r{^/2011/03/redis-key-value-store/?$}, 'http://arun.im/2011/redis-key-value-store/'
  r301 %r{^/2011/03/gem-1-5-rails-2-3/?$}, 'http://arun.im/2011/gem-1-5-rails-2-3/'
  r301 %r{^/2011/03/selenium-script/?$}, 'http://arun.im/2011/selenium-script/'
  r301 %r{^/2011/03/rails3-application-jruby/?$}, 'http://arun.im/2011/rails3-application-jruby/'
  r301 %r{^/2011/08/serialized-attributes-rails-3/?$}, 'http://arun.im/2011/serialized-attributes-rails-3/'
  r301 %r{^/2011/08/serialized-attributes-rails-3-1/?$}, 'http://arun.im/2011/serialized-attributes-rails-3/'
  r301 %r{^/2011/09/rails-3-0-mongoid/?$}, 'http://arun.im'
  r301 %r{^/2011/09/submit-patch-rails-github-fork-edit-button/?$}, 'http://arun.im/2011/submit-patch-rails-github-fork-edit-button/'
  r301 %r{^/2011/10/rails-3-1-jruby/?$}, 'http://arun.im/2011/rails-3-1-jruby/'
  r301 %r{^/2011/10/x-request-id-tracking-taggedlogging-rails/?$}, 'http://arun.im/2011/x-request-id-tracking-taggedlogging-rails/'
  r301 %r{^/2011/10/respond-custom-formats-rails/?$}, 'http://arun.im/2011/respond-custom-formats-rails/'
  r301 %r{^/2011/11/oauth-omniauth-twitter/?$}, 'http://arun.im/2011/oauth-omniauth-twitter/'
end

class SinatraStaticServer < Sinatra::Base

  get(/.+/) do
    send_sinatra_file(request.path) {404}
  end

  not_found do
    send_file(File.join(File.dirname(__FILE__), 'public', '404.html'), {:status => 404})
  end

  def send_sinatra_file(path, &missing_file_block)
    file_path = File.join(File.dirname(__FILE__), 'public',  path)
    file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i
    File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
  end

end

run SinatraStaticServer
