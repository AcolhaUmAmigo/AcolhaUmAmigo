class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	def hello
	render html: '<h1>Acolha um amigo</h1>
		<img src="http://tudosobrecachorros.com.br/wp-content/uploads/precos-de-cachorro.png"/>'.html_safe

end
end
