require './ar_condicionado'

class Dummy 
  include Simulacao
end

dummy = Dummy.new
dummy.simula(*(ARGV.empty? ? [360, 30, 20, 2]: ARGV.map{|s| Integer(s)}))