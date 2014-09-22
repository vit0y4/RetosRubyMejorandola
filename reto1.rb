def palindromo(frase)
    esPalindromo=true
    frase_limpia = frase.gsub(/[^a-zA-Z]/, "").downcase
    arreglo = frase_limpia.split(//)
    rever = frase_limpia.reverse.split(//)
    for i in 0..arreglo.length-1
      if arreglo[i] != rever[i]
        esPalindromo=false
      end
    end
    
    return esPalindromo
   
end

def cuenta_palabras(frase)
  frecuencias = Hash.new(0)
  palabras = frase.split(" ")
  palabras.each do |palabra|
    frecuencias[palabra.downcase] += 1
  end
  return frecuencias
end
 
def resuelve_torre(numero_discos, torre_origen = "1", torre_destino = "3", torre_alterna = "2")
  if numero_discos == 1
    puts "mueva el disco #{numero_discos} de la torre #{torre_origen} a la torre #{torre_destino}"
  else
    numerodiscos = numero_discos-1
    resuelve_torre(numero_discos -1, torre_origen, torre_alterna, torre_destino)
    puts "mueve el disco #{numero_discos} de la torre #{torre_origen} a la torre #{torre_destino}"
    resuelve_torre(numero_discos -1, torre_alterna, torre_destino, torre_origen)
  end
end
      
 
def array_sort(array, asc)
  temp = 0
  arreglo = Array.new(array)
  if asc==true
    for i in 0..arreglo.length - 1
      for j in 0..arreglo.length - 1
        if arreglo[j+1] != nil
        if arreglo[j+1] < arreglo[j] then
          temp=arreglo[j+1]
          arreglo[j+1]=arreglo[j]
          arreglo[j]=temp
        end
      end
      end
    end
    
    return arreglo
    else
    for i in 0..arreglo.length - 1
      for j in 0..arreglo.length - 1
        if arreglo[j+1] != nil
        if arreglo[j+1] > arreglo[j] then
          temp=arreglo[j]
          arreglo[j]=arreglo[j+1]
          arreglo[j+1]=temp
        end
      end
      end
    end
    
    return arreglo
  end
end


 
def char_count(frase, character)
  frase_limpia = frase.gsub(/[^a-zA-Z]/, "").downcase
  arreglo = frase_limpia.split(//)
  frecuencias = 0
  for i in 0..arreglo.length
    if arreglo[i]==character
      frecuencias += 1
    end
  end
  return frecuencias

end
 
def atoi(num_string)
  limpia = num_string.gsub(/[a-zA-Z\W]/, "")
  puts "#{limpia}"
  arreglo = limpia.split(//)
  puts "#{arreglo}"
  decimal = ["0","1","2","3","4","5","6","7","8","9"]
  for i in 0..arreglo.length-1
    for j in 0..decimal.length-1
      if arreglo[i] == decimal[j]
        arreglo[i]=j
        break
      end
    end
  end
  puts "#{arreglo}"
  acum = arreglo[0]
  for i in 1..arreglo.length-1
    acum = acum*10 + arreglo[i]
  end
  return acum
end

  puts "1. Palindromo"
  puts "2. Cuenta palabras"
  puts "3. Resuelve Torres Hanoi"
  puts "4. Ordenar arreglo"
  puts "5. Contar letra"
  puts "6. Convertir a entero"
  option = gets().to_i

  case option 
  when 1
    puts "escriba una frase a evaluar"
    frase = gets().chomp
    puts palindromo(frase)
  when 2
    puts "escriba una frase a evaluar"
    frase = gets().chomp
    puts cuenta_palabras(frase)
  when 3
    puts "Digite el numero de discos"
    numero_discos = gets().to_i
    resuelve_torre(numero_discos)
  when 4
    puts "Digite el arreglo a ordenar (separe los elementos con comas)"
    arreglo = gets().split(",").map(&:to_i)
    puts "Ascendente=A o Descendente=D"
    rta=gets.chomp
    if rta=="A"
      asc = true
      puts array_sort(arreglo, asc)
    elsif rta=="D"
      asc = false
      puts array_sort(arreglo, asc)
    else
      puts "ERROR!!!!"
    end
    
  when 5
    puts "Escriba una frase"
    frase = gets().chomp
    puts "Digite la letra que quiere contar"
    letra = gets().chomp
    puts char_count(frase, letra)

  when 6
    puts "Escriba numero"
    numeroString = gets().chomp
    puts atoi(numeroString)
    
  else
    puts "Opcion invalida"
  end



 