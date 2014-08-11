Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :name => "blog_entries_index",
                     :insert_after => "#header") do
      "<% if !@blog_entries.empty? %>
        <ul id='blog_entry_entries'>
          <% @blog_entries.each do |blog_entry| %>
            <li>
              <%= render :partial => 'spree/blog_entries/blog_entry', :locals => {:blog_entry => blog_entry} %>
            </li>
          <% end %>
        </ul>
        <%= paginate @blog_entries %>
      <% else %>
        <p id='no_entries'><%= Spree.t(:no_blog_entries) %></p>
      <% end %>"
    end
