Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :name => "blog_entries_index",
                     :insert_after => "#header") do
      "<% if current_page?(root_path) %>
        <% if !@blog_entries.empty? %>
          <div class='index_banner'>
            <ul id='blog_entry_entries'>
              <% @blog_entries.first do |blog_entry| %>
                <li>
                  <%= render :partial => 'spree/blog_entries/index_blog_banner', :locals => {:blog_entry => blog_entry} %>
                </li>
              <% end %>
            </ul>
          </div>
          <%= paginate @blog_entries %>
        <% else %>
          <p id='no_entries'><%= Spree.t(:no_blog_entries) %></p>
        <% end %>
      <% end %>"
    end
