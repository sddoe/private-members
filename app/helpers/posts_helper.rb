module PostsHelper
  def show_member_name(post)
    out = ''
    out << "<small><em> #{post.member.name} </em></small>" if member_signed_in?
    out.html_safe
  end
end
