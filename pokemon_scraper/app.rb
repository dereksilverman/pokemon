require './lib/scraper'
require './lib/pokemon'

my_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_name")
name = my_scraper.get_name

pokemons = []
i = 0

until i == name.length
	pokemon = Pokemon.new(name[i])
  	pokemons << pokemon
  	i += 1
 end

i = 0
until i == name.length
	pokemons[i].name.gsub!("wiki/","")
	pokemons[i].name.gsub!("/","")
	pokemons[i].name.gsub!("_(Pok%C3%A9mon)","")
	i += 1
end

pokemons.sample.say_name