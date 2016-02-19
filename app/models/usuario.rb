class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pessoa
  has_many :pedidos, through: :pessoa

  accepts_nested_attributes_for :pessoa

  def with_pessoa
    self.pessoa = Pessoa.new
    self
  end

  def with_endereco
    self.pessoa.enderecos << Endereco.new
    self
  end

end