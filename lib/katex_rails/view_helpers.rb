# frozen_string_literal: true

module KatexRails
  # ViewHelpers - include katex cdn for js and styling and initialize the auto rendering for math expressions
  module ViewHelpers
    def katex_include_tag
      javascript_include_tag(
        "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/katex.min.js",
        "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/contrib/auto-render.min.js"
      ) +
        stylesheet_link_tag(
          "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.16.9/katex.min.css"
        )
    end

    def katex_render_tag(selector: ".math")
      # Initializes the auto-rendering of math expressions on the given selector
      javascript_tag <<~JS
        document.addEventListener('DOMContentLoaded', function() {
          renderMathInElement(document.querySelector("#{selector}"), {
            delimiters: [
              {left: "$$", right: "$$", display: true},
              {left: "\\(", right: "\\)", display: false}
            ]
          });
        });
      JS
    end
  end
end
