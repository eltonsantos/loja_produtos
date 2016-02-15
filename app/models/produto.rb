class Produto < ActiveRecord::Base
  has_many :itens
end
