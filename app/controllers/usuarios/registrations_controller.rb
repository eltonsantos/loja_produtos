class Usuarios::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  def create
    super
  end

  def new
    super
  end

  protected

  def configure_sign_up_params
    attributes = { pessoa_attributes: [:nome, :cpf, :telefone, :data_nascimento, :sexo,
                  enderecos_attributes: [:cep, :rua, :bairro, :cidade, :estado, :numero, :complemento]] }
    devise_parameter_sanitizer.for(:sign_up) << attributes
  end
end