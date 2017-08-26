class Contador
  @qtd = 0

  def self.qtd
    @qtd
  end

  def self.incrementa
    @qtd += 1
  end
end
