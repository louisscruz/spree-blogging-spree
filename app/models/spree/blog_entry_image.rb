class Spree::BlogEntryImage < Spree::Image
  has_attached_file :attachment,
     :styles => {
       :mini => '48x48#',
       :normal => '200x200>',
       :large => '600x600>',
       :banner => '2800x600#'},
     :convert_options => {
       :banner => '-quality 30'
     },
     :default_style => :banner,
     :url => "/assets/blog_entry_images/:id/:style/:basename.:extension",
     :path => ":rails_root/public/assets/blog_entry_images/:id/:style/:basename.:extension"
end
