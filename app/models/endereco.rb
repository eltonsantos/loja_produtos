class Endereco < ActiveRecord::Base
  belongs_to :enderecavel, polymorphic: true
end


