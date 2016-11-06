module MarkdownHelper
  # render a markdown partial using the markdown layout
  # FIXME: replace layout with a mountain view component
  def render_md(partial, *locals)
    render partial: partial, locals: locals[0], layout: 'layouts/markdown'
  end
end
