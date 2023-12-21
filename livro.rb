class Livro
    attr_reader :titulo, :preco, :ano_lancamento
    def initialize(titulo, preco, ano_lancamento)
        @titulo = titulo
        @preco = preco
        @ano_lancamento = ano_lancamento
        @preco *= 0.7 if ano_lancamento < 2000
    end
end

def livros_para_newsletter(livro)
    if livro.ano_lancamento < 1999
        puts "Newsletter/Liquidacao"
        puts livro.titulo
        puts livro.preco
    end
end

def aplica_promocoes(livro)
    if livro.ano_lancamento < 2000
        livro_preco *= 0.7
    end
end

algoritmos = Livro.new("Algoritmos", 100, 1998)

livros_para_newsletter(algoritmos)