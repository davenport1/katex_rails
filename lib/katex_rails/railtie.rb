# frozen_string_literal: true

require "rails"

module KatexRails
  # Railtie - Rails hook-in
  class Railtie < ::Rails::Railtie
    initializer "katex_rails.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include KatexRails::ViewHelpers
      end
    end
  end
end
