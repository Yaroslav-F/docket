require 'docket/view_helpers'
module Docket
  class Railtie < Rails::Railtie
    initializer 'docket.view_helpers' do
      ActionView::Base.send :include, ViewHelpers
    end

    initializer 'docket.add_autoload_paths', before: :set_autoload_paths do |app|
      app.config.autoload_paths << app.root.join('lib/docket/partials').to_s
    end

    initializer 'embeddable.add_view_paths', after: :add_view_paths do
      ActiveSupport.on_load(:action_controller) do
        append_view_path "#{Gem.loaded_specs['docket'].full_gem_path}/lib/docket"
      end
    end
  end
end
