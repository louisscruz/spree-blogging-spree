class Spree::BlogEntryImage < Spree::Image
  has_attached_file :attachment,
     :styles => {
       :mini => '96x96#',
       :normal => '400x400#',
       :banner_small => ['768x300#',       :jpg, :quality => 80],
       :banner_medium => ['1024x300#',     :jpg, :quality => 80],
       :banner_large => ['1400x300>',      :jpg, :quality => 80],
       :banner_small2x => ['1536x600#',    :jpg, :quality => 60],
       :banner_medium2x => ['2048x600#',   :jpg, :quality => 60],
       :banner_large2x => ['2800x600>',    :jpg, :quality => 60]
     },
     :convert_options => {
       :banner_small2x => '-set colorspace sRGB -strip -sharpen 0x0.5',
       :banner_half2x => '-set colorspace sRGB -strip -sharpen 0x0.5',
       :banner2x => '-set colorspace sRGB -strip -sharpen 0x0.5'
     },
     :default_style => :banner_large,
     :url => "/assets/blog_entry_images/:id/:style/:basename.:extension",
     :path => ":rails_root/public/assets/blog_entry_images/:id/:style/:basename.:extension"
end
