module ColorboxHelper
  #For Colorbox popups
  #Derived rails core and colorbox-on-rails
  #https://github.com/vanweerd/colorbox-on-rails
  def link_to_colorbox(*args, &block)
    if block_given?
      options = args.first || {}
      html_options = args.second
      link_to(capture(&block), options, html_options)
    else
      name = args[0]
      options = args[1] || {}
      html_options = args[2]
      
      html_options = convert_options_to_data_attributes(options, html_options)
      url = url_for(options)

      href = html_options['href']
      tag_options = tag_options(html_options)

      href_attr = "href=\"#{ERB::Util.html_escape(url)}\"" unless href
      "<a #{href_attr}#{tag_options} class=\"colorbox\">#{ERB::Util.html_escape(name || url)}</a>".html_safe
    end
  end
end