class Spree::BlogEntryImage < Spree::Image
  has_attached_file :attachment,
     :styles => {
       :mini => '96x96#',
       :normal => '400x400#',
       :banner_half => ['1400x300>',   :jpg, :quality => 60],
       :banner => ['2800x600>',        :jpg, :quality => 60]
     },
     :convert_options => {
       :banner_half => '-set colorspace sRGB -strip -sharpen 0x0.5',
       :banner => '-set colorspace sRGB -strip -sharpen 0x0.5'
     },
     :default_style => :banner,
     :url => "/assets/blog_entry_images/:id/:style/:basename.:extension",
     :path => ":rails_root/public/assets/blog_entry_images/:id/:style/:basename.:extension"
end
