class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	def hello
	render html: 'Acolha um amigo
		<img src="http://tudosobrecachorros.com.br/wp-content/uploads/precos-de-cachorro.png"/>'.html_safe

end
end
