Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :name => "blog_entries_index",
                     :insert_after => "#header") do
      "<% if current_page?(root_path) %>
        <% if !@blog_entries.empty? %>
          <div class='index_banner'>
            <ul id='blog_entry_entries' class='bxslider'>
              <% @blog_entries.each do |blog_entry| %>
                <li>
                  <%= render :partial => 'spree/blog_entries/index_blog_banner', :locals => {:blog_entry => blog_entry}, :style => '
                      .banner_image {
                        height: 300px;
                        width: 100%;
                        background-position: center;
                        background-repeat: no-repeat;
                        background-image: url('<%= blog_entry.blog_entry_image.attachment.url(:banner_full) %>');
                        background-size: 1400px 300px;
                      }
                      @media only screen and (max-width: 1024px) {
                        .banner_image {
                          background-image: url('<%= blog_entry.blog_entry_image.attachment.url(:banner_large) %>');
                          background-size: 1024px 300px;
                        }
                      }
                      @media only screen and (max-width: 768px) {
                        .banner_image {
                          background-image: url('<%= blog_entry.blog_entry_image.attachment.url(:banner_medium) %>');
                          background-size: 768px 300px;
                        }
                      }
                      @media only screen and (max-width: 568px) {
                        .banner_image {
                          height: 240px;
                          background-image: url('<%= blog_entry.blog_entry_image.attachment.url(:banner_small) %>');
                          background-size: 568px 240px;
                        }
                      }
                      @media only screen and (max-width: 480px) {
                        .banner_image {
                          height: 240px;
                          background-image: url('<%= blog_entry.blog_entry_image.attachment.url(:banner_mini) %>');
                          background-size: 480px 240px;
                        }
                      }
                  ' %>
                </li>
              <% end %>
            </ul>
          </div>
        <% else %>
          <p id='no_entries'><%= Spree.t(:no_blog_entries) %></p>
        <% end %>
      <% end %>"
    end
