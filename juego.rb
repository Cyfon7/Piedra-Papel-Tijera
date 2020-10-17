#Toma de jugada
user_temp = ARGV[0].chomp
cpu_play = rand(3)

if user_temp == "piedra"
    user_play = 0
elsif user_temp == "papel"
    user_play = 1
elsif user_temp == "tijera"
    user_play = 2
else
    user_play = 5 #Valor para finalizar programa
end

if (user_play >=0 && user_play <=2)  #Validación de Entrada
    #Condiciones User Win
    piedra = (user_play == 0 && cpu_play == 2)  
    papel = (user_play == 1 && cpu_play == 0)
    tijera = (user_play == 2 && cpu_play == 1)

    #Jugada CPU
    print "Computador juega "
    if (cpu_play == 0)
        puts "piedra"
    elsif (cpu_play == 1)
        puts "papel"
    else
        puts "tijera"
    end

    #Resultado
    if (cpu_play == user_play)
        puts "Empataste"
    elsif (piedra || papel || tijera)
        puts "Ganaste"
    else
        puts "Perdiste"
    end
else
    puts "Argumento inválido: Debe ser piedra, papel o tijera."
end