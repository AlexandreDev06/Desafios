class Pagamento
  attr_accessor :nome, :preco, :produto, :valor

  def initialize(quantidade:, preco:, produto: "Sem nome")
    @quantidade = quantidade
    @preco = preco
    @produto = produto
    @valor
  end

  def calcular_valor
    @valor = @preco * @quantidade
  end

  def aplicar_desconto(porcentagem)
    @valor = valor - (valor * porcentagem / 100)
  end
end
