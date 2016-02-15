# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'carrinho', 'carrinhos'
  inflect.irregular 'pessoa', 'pessoas'
  inflect.irregular 'usuario', 'usuarios'
  inflect.irregular 'endereco', 'enderecos'
  inflect.irregular 'pedido', 'pedidos'
  inflect.irregular 'item_carrinho', 'itens_carrinho'
  inflect.irregular 'produto', 'produtos'
  inflect.irregular 'item_pedido', 'itens_pedidos'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
