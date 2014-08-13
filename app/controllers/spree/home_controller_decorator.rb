Spree::HomeController.class_eval do
  helper 'spree/blog_entries'
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def index
    @blog_entries = Spree::BlogEntry.order('created_at desc').limit(2)
  end
end
