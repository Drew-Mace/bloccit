module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user == post.user && (current_user.moderator? || current_user.admin?)
  end
end