require 'soap/rpc/driver'

a=0
while a<5
	print a        # přidáme hodnotu z a na konec pole b
	a+=1
end
print "\n"
=begin vysledek
01234
=end

puts "cykus n-krat"
n=3
n.times {|x| puts "#{x} + #{x*2}"} 
#i takhle to fachci
2.times {|x| puts "#{x} + #{x*2}"} 
=begin vysledek
0 + 0
1 + 2
2 + 4
=end

puts"cykus n-krat pres pole"
pole=[2,8,"R"] #tohle funguje taky
pole.length.times {|i| puts "#{i}+ #{pole[i]}"} 
=begin vysledek
0 + 2
1 + 8
2 + R
=end

puts "Cyklus n x  Iterce pres pole [0..3]tohle ale nefunguje jakk bych si predstavoval"
n=[0..3] #tohle nefunguje protoze je pole prazdne pole je sice deklarovane [0..3] ale je nulove delky
n.length.times {|x| puts "#{x} + #{n[x]}"} 
=begin vysledek
0 + 0..3
=end

puts "Cyklus for od 0..3 funguje"
for i in 0..3 
 puts "#{i} + #{i*2}"
end  
=begin vysledek
0 + 0
1 + 2
2 + 4
3 + 6
=end

puts "cyklus pres vsechny polozky pole=[14.5,8,\"Reka\"]"
pole=[14.5,8,"Reka"]
pole.each {|polozka| puts "polozka=#{polozka} \t typu  #{polozka.class}"}
=begin vysledek
polozka=14.5 typu  Float
polozka=8 	 typu  Fixnum
polozka=Reka typu  String
=end

s="prdel  "
puts s.index("el") # vysledek = 3
puts s.include?("el")# vysledek = true
puts s.reverse # vysledek = ledrp
puts s.strip #odstrani mezery ze zacatku akonce
puts s.tr!("pr","Mr") # vykricnik zpusobi ze se objekt s zameni tj 
#s="prdel" bez vykricniku vysledek je ale "Mrdel"  !!!!!!!!!!!!!!
#s="Mrdel" s vykricnikem  !!!!!!!!!!!!!!!!!!!!!!
pole=[14.5,8,4]
print pole.sort.join(" | ") 
puts
# 4 | 8 | 14.5
pole=['blb','pasta','kosmos']
print pole.sort.join(" | ")

puts "Program: #{$0}" #cesta k prave spustenem		u tj tomuto programu
puts "Argumenty z příkazové řádky: #{ARGV.join(', ')}"
#vypis promennych prostredi
#puts "Proměnné prostředí:"
#ENV.each { |key,value|
#  puts "#{key} = #{value}"
#}

puts "Program: #{$0}  #{ARGV[0]}" #cesta k prave spustenem		u tj tomuto programu
puts "Argumenty z radky: #{ARGV.join(', ')}"
ARGV.each { |value|
puts "#{value}"
}

def fibUpTo(max)
  i1, i2 = 1, 1        # parallel assignment
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

def test()
  i1, i2 = 1, 1   # parallel assignment
  while i1 <= 1000
  	yield i1 
  	i1, i2 = i2, i1+i2
  end	
end

fibUpTo(1000) { |f| print f, " " }

test {|i| print i} 
 
#spusteni mysql na c9 nejprve musi byt nainstalovana mysql-ctl install
 mysql-ctl cli
 
 