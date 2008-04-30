template = %q{ 
  class CreateOta<%= @schema %> < ActiveRecord::Migration
    def self.up
      <% @elements.each do |node| %>
      create_table :ota_<%= node[:node].underscore %> do |t|
        <% node[:attributes].each_pair do |k,v| %>
        <% unless kind(v) == 'interval' %>
        t.<%= kind(v) %> :<%= k.underscore %><% if size(v) %>, :limit => <%= size(v) %> <% end %>
        <% end %>
        <% end %>
        t.integer :parent_id
        t.timestamps
      end
      <% node[:attributes].each_pair do |k,v| %>
        <% if kind(v) == 'interval' %>
        execute("alter table ota_<%= node[:node].underscore %> add <%= k.underscore %> <%= kind(v) %>")
        <% end %>
      <% end %>
      <% end %>
    end

    def self.down
      <% @elements.each do |node| %>
      drop_table :ota_<%= node[:node].underscore %>
      <% end %>
    end
  end
}.gsub(/^  /,'')
