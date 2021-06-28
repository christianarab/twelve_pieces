class Restaurant < ApplicationRecord
  include Filterable
  scope :filter_by_cuisine, -> (cuisine) { where cuisine: cuisine }
end
