module PostsHelper
  def create_post
  	out = ''
  	if member_signed_in?
  	  out << link_to('New Post', new_post_path)
  	end
  	out.html_safe
  end
  def show_member_name(post)
    out = ''
    out << "<small><em> #{post.member.name} </em></small>" if member_signed_in?
    out.html_safe
  end
end
