# frozen_string_literal: true

require "spec_helper"
require "rails"
require "action_view"
require "katex_rails"

RSpec.configure do |config|
  config.include ActionView::Helpers::TagHelper
  config.include ActionView::Helpers::AssetTagHelper
end
