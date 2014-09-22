class Dessert
  @@count = 0
  attr_accessor :name, :size, :calories
 
  def initialize
    @@count += 1
  end
 
  def self.count
    @@count ||= 0
  end
 
  def healthy?
    if @calories < 200
        true
      else
        false
    end    
  end
 
  def delicious?
    true
  end
end

 
class JellyBean < Dessert
  attr_accessor :flavor
 
  def delicious?
    !@flavor.eql?("black licorice")
  end
end

def mispostres ()
  puts "ES JellyBean? y/n"
  jb = gets().chomp
  if jb == "n"
    puts "Crea un nuevo postre!"
    dessert = Dessert.new
    puts "nombre: "
    nombre = gets().chomp
    dessert.name = nombre
    puts "tamano: "
    tamano = gets().chomp
    dessert.size = tamano
    puts "calorias: "
    calorias = gets().chomp
    dessert.calories = calorias.to_i
    puts "Es saludable? #{dessert.healthy?}"
    puts "Es delicioso? #{dessert.delicious?}"
    else
      puts "Crea un nuevo postre!"
      jellyB = JellyBean.new
      puts "nombre: "
      nombre = gets().chomp
      jellyB.name = nombre
      puts "tamano: "
      tamano = gets().chomp
      jellyB.size = tamano
      puts "calorias: "
      calorias = gets().chomp
      jellyB.calories = calorias.to_i
      puts "Sabor: "
      sabor = gets().chomp
      jellyB.flavor = sabor
      puts "Es saludable? #{jellyB.healthy?}"
      puts "Es delicioso? #{jellyB.delicious?}"
  end


  puts "Cuenta #{Dessert.count}"

  puts "Crear otro postre? y/n"
  valor = gets().chomp
  if valor == "y"
    mispostres()
  else
    puts "Chao!"
  end
end

mispostres()


 




 

