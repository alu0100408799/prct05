# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
require "./gcm.rb"

class Fraccion
  
=begin
   Inicializamos el objeto fracción: Recibimos por parámetros los valores para dos
   números, numerador y denominador, para trabajar con ellos en su mínima expresión
   utilizando el Máximo Común Divisor, es decir, encontrar el número más grande que
   divida a ambos elementos. 
=end
  
  def initialize(*n,*m)
    @n1 = n/gcd(n,m)
    @n2 = m/gcd(n.m)
  end
  
  #Convertimos en cadena el elemento para imprimirlo por pantalla
  def to_string
    puts "#{@n1}/#{@n2}"
  end 
  
  #Dado cualquier número devolverlo en su fracción reducida
  def simplynum(num,den)
    num = num/gdc(num,den)
    den = den/gdc(num,den)
    return num,den
  end
   
  #Sumar el objeto que invocamos y el que recibimos por parámetros
  def suma(num,den)
    num,den = simplynum(num,den) #Transforma los numeros en minima expresión
    if (@n2 == den) #Mismo denominador
        @n1 += num  #Solo suma numeradores 
    else            #Si el denominador es distinto 
        xden = gcm(@n2,den) #Denominador común	
	xnum = ((xden/@n2)*@n1)+((xden/den)*num) #Nuevo numerador
	@n1,@n2 = simplynum(xnum,xden)
    end
    return @n1,@n2
  end
  
  #Restar el objeto que invocamos y el que recibimos por parámetros
  def resta(num,den)
    num,den = simplynum(num,den) #Transforma los numeros en minima expresión
    if (@n2 == den) #Mismo denominador
        @n1 += num  #Solo suma numeradores 
    else            #Si el denominador es distinto 
        xden = gcm(@n2,den) #Denominador común	
	xnum = ((xden/@n2)*@n1)-((xden/den)*num) #Nuevo numerador
	@n1,@n2 = simplynum(xnum,xden)
    end
    return @n1,@n2
  end
  
  #Multiplicar el objeto que invocamos y el que recibimos por parámetros
  def multiplicar(num,den)
    num,den = simplynum(num,den) #Transforma los numeros en minima expresión
    #Realizamos la multiplicación directa de numeradores y denominadores
    @n1,@n2 = simplynum(num*@n1,den*@n2)
    return @n1,@n2
  end
  
  #Dividir el objeto que invocamos y el que recibimos por parámetros
  def dividir(num,den)
    num,den = simplynum(num,den) #Transforma los numeros en minima expresión
    #Realizamos la división directa de numeradores y denominadores
    @n1,@n2 = simplynum(@n1*den,@n2*num)
    return @n1,@n2
  end
  
end
