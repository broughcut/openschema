template = %q{ 
  class CreateOta<%= @schema %> < ActiveRecord::Migration
    def self.up
      <% @elements.each do |node| %>
      create_table :ota_<%= node[:node].underscore %> do |t|
        <% node[:attributes].each_pair do |k,v| %>
        <% kind = kind(v) %>
        <% if kind != "interval" && kind != "decimal" %>
        t.<%= kind %> :<%= k.underscore %><% if size(kind,v) %>, <%= size(kind,v) %> <% end %>
        <% elsif kind == "decimal" %>
        t.decimal :<%= k.underscore %>, <%= size(kind,v) %>
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
