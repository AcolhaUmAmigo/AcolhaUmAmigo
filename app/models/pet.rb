
class Pet < ApplicationRecord

	validates :doadornome, presence: {message: "não pode estar vazio"}
	validates :doadoremail, presence: {message: "não pode estar vazio"}
	validates :petnome, presence: {message: "não pode estar vazio"}
	validates :petraca, presence: {message: "não pode estar vazio"}
	validates :petobservacoes, presence: {message: "não pode estar vazio"}
	validates :petidade, presence: {message: "não pode estar vazio"}
	validates :pettamanho, presence: {message: "não pode estar vazio"}
	

	
end

