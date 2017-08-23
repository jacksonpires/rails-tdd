$count = 0

describe "let!" do
  ordem_de_invocacao = []

  let!(:contador) do
    ordem_de_invocacao << :let!
    $count += 1
  end

  it "chama o método helper antes do teste" do
    ordem_de_invocacao << :exemplo
    expect(ordem_de_invocacao).to eq([:let!, :exemplo])
    expect(contador).to eq(1)
  end
end
