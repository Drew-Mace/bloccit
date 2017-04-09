module ApplicationHelper
  def form_group_tag(errors, &block)
    css_class = 'form-group'
    css_class << ' has-error' if errors.any?
    content_tag :div, capture(&block), class: css_class
  end
  
  def avatar_url(user)
    
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end
  
  def no_posts_yet(user)
    @user.posts.empty?
  end
  
  def no_comments_yet(user)
    @user.comments.empty?
  end
  
  def no_favorites_yet(user)
    @user.favorites.empty?
  end
end
