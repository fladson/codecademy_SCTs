# Testa se a String passada está presente no código

code = "class Calculadora\nend"
def isDefined?(code, varName) 
  result = code.include?(varName)
  if (!result)
    console.log("Make sure " + varName + " is defined.")
  end
  return result
end

puts isDefined?(code, "class Calculadora")

# Testa se a Classe passada foi criada
def classDefined?(className)
  className.is_a?(Class)
end

class Calculadora 
  def soma(a,b,c)
    a+b+c
  end
end

puts classDefined?(Calculadora)

# Testa se o método passado foi criado e realiza um assert
  # metodo dentro de uma classe especifica
  
  def methodInClassDefined?(className, methodName, resultado, *params)
    if(className.is_a?(Class) && className.method_defined?(methodName))
      # assert do metodo
      className.new.send(methodName,*params).eql?(resultado)
    end
  end
  
  puts methodInClassDefined?(Calculadora, :soma, 18, 1,8,9)
  
  # Metodo qualquer, fora de classes
  def methodDefined?(methodName, resultado=nil, *params)
    retorno = defined? methodName
    if(!retorno.nil? && !resultado.nil?)
      puts here
      retorno = send(methodName, *params)
    end
    retorno
  end
  
  def met
  end
  
  puts methodDefined?(:meta)
  