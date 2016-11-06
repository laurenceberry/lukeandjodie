require 'redcarpet'

module MarkdownHandler
  mattr_reader :renderer
  @@renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML,{})
  def self.erb
    @erb ||= ActionView::Template.registered_template_handler(:erb)
  end

  def self.call(template)
    compiled_source = erb.call(template)
    "MarkdownHandler.renderer.render(begin;#{compiled_source};end).html_safe"
  end
end

ActionView::Template.register_template_handler :md, MarkdownHandler
