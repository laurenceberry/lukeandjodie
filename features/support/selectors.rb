Capybara.add_selector(:href) do
  xpath { |href| XPath.descendant[XPath.attr(:href) == href.to_s] }
end
