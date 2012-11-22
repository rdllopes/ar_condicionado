require './ar_condicionado'

describe Simulacao do
  class Dummy 
    include Simulacao
  end
  let(:ar_condicionado) {Dummy.new}
  
  it "deveria realizar uma simulacao" do
    ar_condicionado.simula(360, 30, 20, 2)
  end
  
end