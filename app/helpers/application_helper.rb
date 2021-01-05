module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def dial_to(phone_number, html_options = {}, &block)
    
    html_options = (html_options || {}).stringify_keys

    encoded_phone_number = ERB::Util.url_encode(phone_number).gsub("%40", "@")
    html_options["href"] = "tel:#{encoded_phone_number}"

    content_tag("a".freeze, phone_number, html_options, &block)
  end
end
