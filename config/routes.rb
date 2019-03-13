Rails.application.routes.draw do
  mount API::Root => '/'
  mount GrapeSwaggerRails::Engine => '/docs' if defined? GrapeSwaggerRails
end
