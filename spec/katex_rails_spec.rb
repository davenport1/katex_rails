# frozen_string_literal: true

require "rails_helper"

RSpec.describe KatexRails do
  it "has a version number" do
    expect(KatexRails::VERSION).not_to be nil
  end
end

RSpec.describe KatexRails::ViewHelpers, type: :helper do
  include KatexRails::ViewHelpers

  describe "#katex_include_tag" do
    it "includes the main KaTeX Javascript and CSS links" do
      result = katex_include_tag

      # Test the JS includes
      expect(result).to include("https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/katex.min.js")
      expect(result).to include("https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/contrib/auto-render.min.js")

      # Test the CSS includes
      expect(result).to include("https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/katex.min.css")
    end

    it "generates the valid HTML tags" do
      result = katex_include_tag

      expected_html = <<-HTML
        <script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/katex.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/contrib/auto-render.min.js"></script><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/katex.min.css" />
      HTML

      # Normalize both strings by removing extra spaces, line breaks, and indentation
      normalized_result = result.gsub(/\s+/, " ").strip
      normalized_expected = expected_html.gsub(/\s+/, " ").strip

      # Assert
      expect(normalized_result).to eq(normalized_expected)
    end
  end
end
