puts "Bienvenido a la Calculadora de Ruby"

def calculate
print "Ingresa el primer número: "
num1 = gets.chomp.to_f
print "Ingresa el segundo número: "
num2 = gets.chomp.to_f

print "Selecciona la operación (+, -, *, /): "
operation = gets.chomp

case operation
when "+"
result = num1 + num2
when "-"
result = num1 - num2
when "*"
result = num1 * num2
when "/"
if num2 == 0
puts "Error: No se puede dividir entre cero."
return
end
result = num1 / num2
else
puts "Operación inválida."
return
end

puts "El resultado es: #{result}"
end

loop do
calculate
print "¿Quieres realizar otra operación? (s/n): "
choice = gets.chomp.downcase
break if choice != "s"
end

puts "¡Adiós!"