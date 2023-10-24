# Você está registrando a pontuação para um jogo de beisebol com regras estranhas. O jogo consiste em várias rodadas, onde as pontuações de rodadas passadas podem afetar as pontuações de rodadas futuras. No início do jogo, você começa com um registro vazio. Você recebe uma lista de strings ops, onde ops[i] é a i-ésima operação que você deve aplicar ao registro e pode ser uma das seguintes:
# 
#     Um número inteiro x - Registre uma nova pontuação x.
#     "+" - Registre uma nova pontuação que é a soma das duas pontuações anteriores. É garantido que sempre haverá duas pontuações anteriores.
#     "D" - Registre uma nova pontuação que é o dobro da pontuação anterior. É garantido que sempre haverá uma pontuação anterior.
#     "C" - Invalide a pontuação anterior, removendo-a do registro. É garantido que sempre haverá uma pontuação anterior.
#     Retorne a soma de todas as pontuações no registro.
#     Exemplo 1:
#     Entrada: ops = ["5", "2", "C", "D", "+"]
#     Saída: 30
#     Explicação:
#     "5" - Adicione 5 ao registro, o registro agora é [5].
#     "2" - Adicione 2 ao registro, o registro agora é [5, 2].
#     "C" - Invalide e remova a pontuação anterior, o registro agora é [5].
#     "D" - Adicione 25 = 18 ao registro, o registro agora é [5, 10].
#     "+" - Adicione 5 + 10 = 15 ao registro, o registro agora é [5, 10, 15].
#     A soma total é 5 + 10 + 15 = 30.

def call_points(ops)
  record = []

  ops.each do |op|
    if op.to_i.zero?
      if op == "C"
        record.pop
      elsif op == "D"
        record << record.last * 2
      elsif op == "+"
        record << record.last(2).sum
      end
    else
      record << op.to_i
    end
  end

  record.sum
end
puts call_points ["5","-2","4", "C", "D", "9","+", "+"]



# Parênteses Válidos
# Dado uma string contendo apenas os caracteres (), {}, '[' e ']', determine se a string de entrada é válida.
# Uma string de entrada é válida se:
# 
# Parênteses abertos devem ser fechados pelo mesmo tipo de parênteses.
# Parênteses abertos devem ser fechados na ordem correta.
# Restrições:
# 1 <= s.length <= 184
# s consiste apenas de parênteses ()[]{}

def is_valid(str)
  pilha = []
  opposite = {
    "}": "{",
    "]": "[",
    ")": "("
  }

  str.each_char do |s|
    if ['{', '[', '('].include?(s)
      pilha.push(s)
    else
      if opposite[s.to_sym] === pilha.last
        pilha.pop
      else
        return false
      end
    end
  end

  pilha.empty?
end


# exp = ["()", "()[]{}", "(]", "([)]",  "{[]}"]
exp = ["()", "()[]{}", "(]", "([)]",  "{[]}"]
exp.each do |s|
  if is_valid(s)
    puts "Valido"
  else
    puts "Invalido"
  end
end