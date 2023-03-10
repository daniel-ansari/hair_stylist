require "administrate/base_dashboard"

class LanguageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    # users: Field::HasMany,
    # id: Field::Number,
    name: Field::String
    # created_at: Field::DateTime,
    # updated_at: Field::DateTime,
    # primary: Field::Boolean
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  # users
  # id
  # created_at
  COLLECTION_ATTRIBUTES = %i[
    name
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  # users
  # id
  # updated_at
  # primary
  SHOW_PAGE_ATTRIBUTES = %i[
    name
    created_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  # users
  # primary
  FORM_ATTRIBUTES = %i[
    name
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how languages are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(language)
    language.name
  end
end
