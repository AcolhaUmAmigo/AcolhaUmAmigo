	require 'base64'
require 'open-uri'
require 'mini_magick'
class Pet < ApplicationRecord

	validates :doadornome, presence: {message: "não pode estar vazio"}
	validates :doadoremail, presence: {message: "não pode estar vazio"}
	validates :petnome, presence: {message: "não pode estar vazio"}
	validates :petraca, presence: {message: "não pode estar vazio"}
	validates :petobservacoes, presence: {message: "não pode estar vazio"}
	validates :petidade, presence: {message: "não pode estar vazio"}
	validates :pettamanho, presence: {message: "não pode estar vazio"}
	

	validate do |pet|
	   ValidarImagem.new(pet).validar
	end


	class ValidarImagem
	def initialize(pet)
	   @pet = pet
	end

	def validar
	   #if !@jogo.titulo.end_with?(".png",".jpg","jpeg")
		#@jogo.errors[:imagem] <<"deve ser png, jpeg ou jpg"
		#return
	   #end
	   begin
	   if (@pet.petimagem_url)
			Rails.logger.debug @jogo.petimagem_url
			image = MiniMagick::Image.open(@pet.petimagem_url)
			image.resize "300x600"
				@pet.petimagem_url = Base64.encode64(open(image.path) { |f| f.read })
		end
			binImage = Base64.decode64(@pet.imagem_upload)
			image = MiniMagick::Image.read(binImage)
			image.resize "300x600"
			@pet.petimagem_url = Base64.encode64(open(image.path) { |f| f.read })
		end
	   	rescue
		
	   rescue
		
	  	@pet.errors[:petimagem_url] <<"-> não foi possível carregar"
	   	#return
	   end
end
end

