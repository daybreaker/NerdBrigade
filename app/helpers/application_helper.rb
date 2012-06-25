module ApplicationHelper
  def cc_html(options={}, &blk)
    attrs = options.map { |(k, v)| " #{h k}='#{h v}'" }.join('')
    [ "<!--[if lt IE 7]> <html#{attrs} class='no-js lt-ie9 lt-ie8 lt-ie7'> <![endif]-->",
      "<!--[if IE 7]>    <html#{attrs} class='no-js lt-ie9 lt-ie8'> <![endif]-->",
      "<!--[if IE 8]>    <html#{attrs} class='no-js lt-ie9'> <![endif]-->",
      "<!--[if gt IE 8]><!--> <html#{attrs} class='no-js'> <!--<![endif]-->",
      capture_haml(&blk).strip,
      "</html>"
    ].join("\n").html_safe
  end
end
