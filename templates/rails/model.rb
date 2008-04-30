template = %q{    
  class Ota<%= @element[:node] %> < ActiveRecord::Base
    set_table_name :ota_<%= @element[:node].underscore %>
    <% @element[:belongs_to].each do |node| %>
    <% if node %>belongs_to :ota_<%= node.underscore %>, :foreign_key => :parent_id<% end %>
    <% end %>
    <% @element[:has_nodes].each do |node| %>
    <% if @element[:children] %><%= node %> <% end %>
    <% end %>
  end
}.gsub(/^  /,'')

