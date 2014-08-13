Spree::HomeController.class_eval do
  helper 'spree/blog_entries'
  before_filter :init_pagination, :only => [:index, :tag, :archive, :author, :category]
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def index
    @blog_entries = Spree::BlogEntry.all
  end
end
