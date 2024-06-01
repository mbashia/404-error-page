defmodule ErrorsWeb.ErrorView do
  use ErrorsWeb, :view

  # If you want to customize a particular status code
  # for a certain format, you may uncomment below.
  # def render("500.html", _assigns) do
  #   "Internal Server Error"
  # end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.html" becomes
#   # "Not Found".

#   400 Bad Request

# Meaning: The server cannot process the request due to a client error (e.g., malformed request syntax).
# Custom Page: 400.html.heex
# 401 Unauthorized

# Meaning: The request requires user authentication.
# Custom Page: 401.html.heex
# 403 Forbidden

# Meaning: The server understands the request but refuses to authorize it.
# Custom Page: 403.html.heex
# 500 Internal Server Error

# Meaning: An unexpected condition was encountered, and no more specific message is suitable.
# Custom Page: 500.html.heex
# 502 Bad Gateway

# Meaning: The server, while acting as a gateway or proxy, received an invalid response from the upstream server.
# Custom Page: 502.html.heex
# 503 Service Unavailable

# Meaning: The server is currently unavailable (because it is overloaded or down for maintenance).
# Custom Page: 503.html.heex
# 504 Gateway Timeout

# Meaning: The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server.
# Custom Page: 504.html.heex
  def template_not_found(template, _assigns) do
    IO.inspect(template)  
    Phoenix.Controller.status_message_from_template(template)
  end
end
