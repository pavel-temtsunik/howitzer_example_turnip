require_relative 'example_menu'

class ExamplePage < WebPage
  URL = '/'
  validates :url, pattern: /\A(?:.*?:\/\/)?[^\/]*\/?\z/

  add_field_locator :search_input, 'lst-ib'
  add_button_locator :search_btn, 'btnK'

  include ExampleMenu

  def fill_keyword(data)
    fill_in field_locator(:search_input), data
  end
end
