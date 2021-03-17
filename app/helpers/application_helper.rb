module ApplicationHelper
  def show_sign_in_up
    out = ''

    if member_signed_in?
      out << link_to(current_member.name, edit_member_registration_path)
      out << '</br>'
      out << link_to('Sign Out', destroy_member_session_path, method: :delete)
    else
      out << link_to('Sign In', new_member_session_path)
      out << '</br>'
      out << link_to('Sign Up', new_member_registration_path)
    end

    out.html_safe
  end
end
