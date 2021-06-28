module Filterable
  extend ActiveSupport::Concern
  # <%# @results = [] %>
  # <#@restaurants.each do |resto| %>
  #   <%# @results << resto.cuisine %>
  #   <%# end %>
  # <%# @results.uniq.each do |type| %>
  # <%# options_for_select(type) %>
  # <%# type %>
  # <%# end %>

  def cuisines
    @results = []
    self.each do |resto|
      @results << resto.cuisine
    end
    @results.uniq
  end
end