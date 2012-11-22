Ar-condicionado ACME
====================

Simples programa de um ar condicionado em ruby (teste em rspec)

Teste com RSpec
---------------

Para executar os testes:

    bundle
    rspec ar_condicionado.spec.rb

Executar o programa
-------------------

Simplesmente, invocar a classe run:

    ruby run.rb [ARGS]
  
onde ARGS são os parâmetros da simulação do ar condicionado:

1.   Tempo de execução segundos
2.   Temperatura inicial
3.   Temperatura desejada
4.   Tolerância da temperatura desejada

Exemplo:

    ruby run.rb 360 30 20 2

Outra forma de executar é pelo utilitário Make.

    make

Ou utilizando parâmetros:

    make ARGS="360 30 20 2"