require 'faker'


Event.destroy_all if Event.any?
Guest.destroy_all if Guest.any?
Pairing.destroy_all if Pairing.any?
# SeatingChartGenerator.destroy_all if SeatingChartGenerator.any?
Table.destroy_all if Table.any?
User.destroy_all if User.any?

user = User.create!(first_name: "Tom Morvolo", last_name: "Riddle", email: "dark.lord@hewhomustnotbenamed.com", username: "iamlordvoldemort", password: "password")
event = Event.create!(name: "Death Eaters Convention", zip_code: "60654", state: "IL", address_line_one: "351 W. Hubbard St.", begins_at: (DateTime.current + 1.month), ends_at: (DateTime.current + 1.month + 3.hours), host: user)


table_number = 1
10.times do
  Table.create!(event: event, number: table_number, number_of_seats: 10)
  table_number += 1
end

91.times do
  Guest.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, event: event)
end

Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)
Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)
Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)
Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)
Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)
Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)
Pairing.create!(guest: Guest.all.sample, pair: Guest.all.sample)




u1 = User.create(first_name: "Bruce", last_name: "Wayne",
				email: "darkKnigt@gothem.com", username: "batman", password: "joker")

ev = Event.create!(name: "Arkam Reunion", zip_code: "60654", state: "IL", address_line_one: "351 W. Hubbard St.", begins_at: (DateTime.current + 1.month), ends_at: (DateTime.current + 1.month + 3.hours), host: u1)

table_number = 1
8.times do
  Table.create!(event: ev, number: table_number, number_of_seats: 8)
  table_number += 1
end

60.times do
  Guest.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, event: ev)
end

the_gang = []
ev.guests.each do |baddie|
	the_gang << baddie
end

20.times do
	Pairing.create!(guest: the_gang.pop, pair: the_gang.pop)
end



#------------------ For Presentation ----------------------------

user = User.create!(first_name: "The", last_name: "Maitre'D", email: "maitre@d.com", username: "Maitre'D", password: "moustache")
event = Event.create!(name: "DBC Graduation", zip_code: "60654", state: "IL", address_line_one: "351 W. Hubbard St.", begins_at: (DateTime.current), ends_at: (DateTime.current + 3.hours), host: user)


john =  Guest.create!(first_name: "John", last_name: "Sternberg", event: event)
kilima =  Guest.create!(first_name: "Kilima", last_name: "Glenn", event: event)
edwin = Guest.create!(first_name: "Edwin", last_name: "Steinmetz", event: event)
tine = Guest.create!(first_name: "'Tine'", last_name: "Onayemi", event: event)
ben = Guest.create!(first_name: "Ben", last_name: "DiPaola", event: event)
fu = Guest.create!(first_name: "Brian", last_name: "Fu", event: event)
christine = Guest.create!(first_name: "Christine", last_name: "Hager", event: event)
evangeline = Guest.create!(first_name: "Evangeline", last_name: "Garreau", event: event)
lesley = Guest.create!(first_name: "Lesley", last_name: "Kompare", event: event)
mari = Guest.create!(first_name: "Mari", last_name: "Galicer", event: event)
mark = Guest.create!(first_name: "Mark Donald", last_name: "Amobi", event: event)
mike = Guest.create!(first_name: "Mike", last_name: "Ramuta", event: event)
nic = Guest.create!(first_name: "Nic", last_name: "Stelter", event: event)
pete = Guest.create!(first_name: "Pete", last_name: "Hinners", event: event)
ryan = Guest.create!(first_name: "Ryan", last_name: "Lau", event: event)
shawn = Guest.create!(first_name: "Shawn", last_name: "Wilkenson", event: event)
tariq = Guest.create!(first_name: "Tariq", last_name: "Ali", event: event)
duke = Guest.create!(first_name: "Duke", last_name: "Greene", event: event)
mike = Guest.create!(first_name: "Mike", last_name: "Bikes", event: event)
maurice = Guest.create!(first_name: "Maurice", last_name: "Rabb", event: event)
fluffy = Guest.create!(first_name: "Fluffy", last_name: "Space Cat", event: event)
furry = Guest.create!(first_name: "Furry", last_name: "Space Cat", event: event)
fuzzy = Guest.create!(first_name: "Fuzzy", last_name: "Space Cat", event: event)
whiskers = Guest.create!(first_name: "Whiskers", last_name: "Space Cat", event: event)
spot = Guest.create!(first_name: "Spot", last_name: "Space Cat", event: event)
Pairing.create!(guest: shawn, pair: fluffy)
Pairing.create!(guest: shawn, pair: furry)
Pairing.create!(guest: shawn, pair: fuzzy)
Pairing.create!(guest: shawn, pair: whiskers)
Pairing.create!(guest: shawn, pair: spot)
bugs = Guest.create!(first_name: "Bugs", last_name: "Bunny", event: event)
elmer = Guest.create!(first_name: "Elmer", last_name: "Fudd", event: event)
daffy = Guest.create!(first_name: "Daffy", last_name: "Duck", event: event)
porky = Guest.create!(first_name: "Porky", last_name: "Pig", event: event)
yosemite = Guest.create!(first_name: "Yosemite", last_name: "Sam", event: event)
rr = Guest.create!(first_name: "Road", last_name: "Runner", event: event)
wiley = Guest.create!(first_name: "Wile E.", last_name: "Coyote", event: event)
pepe = Guest.create!(first_name: "Pepe", last_name: "Le Pew", event: event)
Pairing.create!(guest: bugs, pair: elmer)
Pairing.create!(guest: bugs, pair: daffy)
Pairing.create!(guest: bugs, pair: porky)
Pairing.create!(guest: bugs, pair: yosemite)
Pairing.create!(guest: bugs, pair: rr)
Pairing.create!(guest: bugs, pair: wiley)
Pairing.create!(guest: bugs, pair: pepe)
obama = Guest.create!(first_name: "Barack", last_name: "Obama", event: event)
ss1 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss2 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss3 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss4 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss5 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss6 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss7 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
ss8 = Guest.create!(first_name: "Secret", last_name: "Service", event: event)
Pairing.create!(guest: obama, pair: ss1)
Pairing.create!(guest: obama, pair: ss2)
Pairing.create!(guest: obama, pair: ss3)
Pairing.create!(guest: obama, pair: ss4)
Pairing.create!(guest: obama, pair: ss5)
Pairing.create!(guest: obama, pair: ss6)
Pairing.create!(guest: obama, pair: ss7)
Pairing.create!(guest: obama, pair: ss8)
chilly = Guest.create!(first_name: "Chilly", last_name: "Willy", event: event)
happy = Guest.create!(first_name: "Happy", last_name: "Feet", event: event)
skipper = Guest.create!(first_name: "Skipper", last_name: "", event: event)
kowalski = Guest.create!(first_name: "Kowalski", last_name: "", event: event)
rico = Guest.create!(first_name: "Rico", last_name: "", event: event)
priv = Guest.create!(first_name: "Private", last_name: "", event: event)
gunther = Guest.create!(first_name: "Gunther", last_name: "", event: event)
Pairing.create!(guest: chilly, pair: happy)
Pairing.create!(guest: chilly, pair: skipper)
Pairing.create!(guest: chilly, pair: kowalski)
Pairing.create!(guest: chilly, pair: rico)
Pairing.create!(guest: chilly, pair: priv)
Pairing.create!(guest: chilly, pair: gunther)
alien = Guest.create!(first_name: "Alien", last_name: "Xenomorph", event: event)
predator = Guest.create!(first_name: "The", last_name: "Predator", event: event)
j = Guest.create!(first_name: "Agent", last_name: "J", event: event)
k = Guest.create!(first_name: "Agent", last_name: "K", event: event)
frank = Guest.create!(first_name: "Frank", last_name: "The Pug", event: event)
ripley = Guest.create!(first_name: "Ripley", last_name: "", event: event)
Pairing.create!(guest: alien, pair: predator)
Pairing.create!(guest: alien, pair: j)
Pairing.create!(guest: alien, pair: k)
Pairing.create!(guest: alien, pair: frank)
Pairing.create!(guest: alien, pair: ripley)
caesar = Guest.create!(first_name: "Julius", last_name: "Caesar", event: event)
brutus = Guest.create!(first_name: "Brutus", last_name: "", event: event)
cassius = Guest.create!(first_name: "Cassius", last_name: "", event: event)
casca = Guest.create!(first_name: "Casca", last_name: "", event: event)
decius = Guest.create!(first_name: "Decius", last_name: "Brutus", event: event)
metellus = Guest.create!(first_name: "Metellus", last_name: "Cimber", event: event)
trebonius = Guest.create!(first_name: "Trebonius", last_name: "", event: event)
anthony = Guest.create!(first_name: "Anthony", last_name: "", event: event)
lepidus = Guest.create!(first_name: "Lepidus", last_name: "", event: event)
popilius = Guest.create!(first_name: "Popilius", last_name: "", event: event)
publius = Guest.create!(first_name: "Publius", last_name: "", event: event)
Pairing.create!(guest: caesar, pair: brutus)
Pairing.create!(guest: caesar, pair: cassius)
Pairing.create!(guest: caesar, pair: casca)
Pairing.create!(guest: caesar, pair: decius)
Pairing.create!(guest: caesar, pair: metellus)
Pairing.create!(guest: caesar, pair: trebonius)
Pairing.create!(guest: caesar, pair: anthony)
Pairing.create!(guest: caesar, pair: lepidus)
Pairing.create!(guest: caesar, pair: popilius)
Pairing.create!(guest: caesar, pair: publius)
wolverine = Guest.create!(first_name: "Wolverine", last_name: "", event: event)
storm = Guest.create!(first_name: "Storm", last_name: "", event: event)
cyclops = Guest.create!(first_name: "Cyclops", last_name: "", event: event)
professor = Guest.create!(first_name: "Professor", last_name: "X", event: event)
magneto = Guest.create!(first_name: "Magneto", last_name: "", event: event)
Pairing.create!(guest: wolverine, pair: storm)
Pairing.create!(guest: wolverine, pair: cyclops)
Pairing.create!(guest: wolverine, pair: professor)
Pairing.create!(guest: wolverine, pair: magneto)
rodgers = Guest.create!(first_name: "Mr.", last_name: "Rodgers", event: event)
t = Guest.create!(first_name: "Mr.", last_name: "T", event: event)
ed = Guest.create!(first_name: "Mr.", last_name: "Ed", event: event)
belvidere = Guest.create!(first_name: "Mr.", last_name: "Belvidere", event: event)
Pairing.create!(guest: rodgers, pair: t)
Pairing.create!(guest: rodgers, pair: ed)
Pairing.create!(guest: rodgers, pair: belvidere)
han = Guest.create!(first_name: "Han", last_name: "Solo", event: event)
luke = Guest.create!(first_name: "Luke", last_name: "Skywalker", event: event)
leia = Guest.create!(first_name: "Leia", last_name: "Organa", event: event)
chewbacca = Guest.create!(first_name: "Chewbacca", last_name: "", event: event)
yoda = Guest.create!(first_name: "Yoda", last_name: "", event: event)
obiwan = Guest.create!(first_name: "Obi-Wan", last_name: "Kenobi", event: event)
Pairing.create!(guest: han, pair: luke)
Pairing.create!(guest: han, pair: leia)
Pairing.create!(guest: han, pair: chewbacca)
Pairing.create!(guest: han, pair: yoda)
Pairing.create!(guest: han, pair: obiwan)
rosie = Guest.create!(first_name: "Rosie", last_name: "", event: event)
hal = Guest.create!(first_name: "HAL", last_name: "", event: event)
r2 = Guest.create!(first_name: "R2D2", last_name: "", event: event)
c3po = Guest.create!(first_name: "C-3PO", last_name: "", event: event)
deep = Guest.create!(first_name: "Deep", last_name: "Blue", event: event)
bender = Guest.create!(first_name: "Bender", last_name: "", event: event)
five = Guest.create!(first_name: "Number", last_name: "5", event: event)
sevenofnine = Guest.create!(first_name: "7", last_name: "of 9", event: event)
Pairing.create!(guest: rosie, pair: hal)
Pairing.create!(guest: rosie, pair: r2)
Pairing.create!(guest: rosie, pair: c3po)
Pairing.create!(guest: rosie, pair: deep)
Pairing.create!(guest: rosie, pair: bender)
Pairing.create!(guest: rosie, pair: five)
Pairing.create!(guest: rosie, pair: sevenofnine)
finn = Guest.create!(first_name: "Finn", last_name: "The Human", event: event)
jake = Guest.create!(first_name: "Jake", last_name: "The Dog", event: event)
bemo = Guest.create!(first_name: "BeMo", last_name: "", event: event)
pb = Guest.create!(first_name: "Princess", last_name: "Bubblegum", event: event)
marceline = Guest.create!(first_name: "Marceline", last_name: "The Vampire Queen", event: event)
lsp = Guest.create!(first_name: "Lumpy", last_name: "Space Princess", event: event)
iceking = Guest.create!(first_name: "Ice", last_name: "King", event: event)
lady = Guest.create!(first_name: "Lady", last_name: "Rainicorn", event: event)
fiona = Guest.create!(first_name: "Fiona", last_name: "", event: event)
cake = Guest.create!(first_name: "Cake", last_name: "", event: event)
Pairing.create!(guest: finn, pair: jake)
Pairing.create!(guest: finn, pair: bemo)
Pairing.create!(guest: finn, pair: pb)
Pairing.create!(guest: finn, pair: marceline)
Pairing.create!(guest: finn, pair: lsp)
Pairing.create!(guest: finn, pair: iceking)
Pairing.create!(guest: finn, pair: lady)
Pairing.create!(guest: finn, pair: fiona)
Pairing.create!(guest: finn, pair: cake)
kirk = Guest.create!(first_name: "James", last_name: "Kirk", event: event)
spock = Guest.create!(first_name: "Spock", last_name: "", event: event)
bones = Guest.create!(first_name: "Bones", last_name: "McCoy", event: event)
uhura = Guest.create!(first_name: "Nyota", last_name: "Uhura", event: event)
checkov = Guest.create!(first_name: "Pavel", last_name: "Checkov", event: event)
sulu = Guest.create!(first_name: "Hikaru", last_name: "Sulu", event: event)
Pairing.create!(guest: kirk, pair: spock)
Pairing.create!(guest: kirk, pair: bones)
Pairing.create!(guest: kirk, pair: uhura)
Pairing.create!(guest: kirk, pair: checkov)
Pairing.create!(guest: kirk, pair: sulu)
picard = Guest.create!(first_name: "Jean Luc", last_name: "Picard", event: event)
riker = Guest.create!(first_name: "William", last_name: "Riker", event: event)
data = Guest.create!(first_name: "Data", last_name: "", event: event)
laforge = Guest.create!(first_name: "Geordi", last_name: "La Forge", event: event)
crusher = Guest.create!(first_name: "Beverly", last_name: "Crusher", event: event)
whorf = Guest.create!(first_name: "Whorf", last_name: "", event: event)
Pairing.create!(guest: picard, pair: riker)
Pairing.create!(guest: picard, pair: data)
Pairing.create!(guest: picard, pair: laforge)
Pairing.create!(guest: picard, pair: crusher)
Pairing.create!(guest: picard, pair: whorf)
dude = Guest.create!(first_name: "The", last_name: "Dude", event: event)
walter = Guest.create!(first_name: "Walter", last_name: "Sobchak", event: event)
donny = Guest.create!(first_name: "Donny", last_name: "Kerabatsos", event: event)
maude = Guest.create!(first_name: "Maude", last_name: "Lebowski", event: event)
n1 = Guest.create!(first_name: "Nihlist", last_name: "1", event: event)
n2 = Guest.create!(first_name: "Nihlist", last_name: "2", event: event)
Pairing.create!(guest: dude, pair: walter)
Pairing.create!(guest: dude, pair: donny)
Pairing.create!(guest: dude, pair: maude)
Pairing.create!(guest: dude, pair: n1)
Pairing.create!(guest: dude, pair: n2)
swift = Guest.create!(first_name: "Taylor", last_name: "Swift", event: event)
mayer = Guest.create!(first_name: "John", last_name: "Mayer", event: event)
borello = Guest.create!(first_name: "Brandon", last_name: "Borello", event: event)
armstrong = Guest.create!(first_name: "Sam", last_name: "Armstrong", event: event)
jonas = Guest.create!(first_name: "Joe", last_name: "Jonas", event: event)
lautner = Guest.create!(first_name: "Taylor", last_name: "Lautner", event: event)
jakeg = Guest.create!(first_name: "Jake", last_name: "Gyllenhaal", event: event)
Pairing.create!(guest: mike, pair: swift)
Pairing.create!(guest: mike, pair: mayer)
Pairing.create!(guest: mike, pair: borello)
Pairing.create!(guest: mike, pair: armstrong)
Pairing.create!(guest: mike, pair: jonas)
Pairing.create!(guest: mike, pair: lautner)
Pairing.create!(guest: mike, pair: jakeg)
sp = Guest.create!(first_name: "Scott", last_name: "Pilgrim", event: event)
ramona = Guest.create!(first_name: "Ramona", last_name: "Flowers", event: event)
knives = Guest.create!(first_name: "Knives", last_name: "Chau", event: event)
envy = Guest.create!(first_name: "Envy", last_name: "Adams", event: event)
kim = Guest.create!(first_name: "Kim", last_name: "Pine", event: event)
patel = Guest.create!(first_name: "Matthew", last_name: "Patel", event: event)
lucas = Guest.create!(first_name: "Lucas", last_name: "Lee", event: event)
todd = Guest.create!(first_name: "Todd", last_name: "Ingram", event: event)
roxie = Guest.create!(first_name: "Roxie", last_name: "Richter", event: event)
kyle = Guest.create!(first_name: "Kyle", last_name: "Katayenagi", event: event)
ken = Guest.create!(first_name: "Ken", last_name: "Katayenagi", event: event)
gideon = Guest.create!(first_name: "Gideon Gordon", last_name: "Graves", event: event)
Pairing.create!(guest: sp, pair: ramona)
Pairing.create!(guest: sp, pair: knives)
Pairing.create!(guest: sp, pair: envy)
Pairing.create!(guest: sp, pair: kim)
Pairing.create!(guest: sp, pair: patel)
Pairing.create!(guest: sp, pair: lucas)
Pairing.create!(guest: sp, pair: todd)
Pairing.create!(guest: sp, pair: roxie)
Pairing.create!(guest: sp, pair: kyle)
Pairing.create!(guest: sp, pair: ken)
Pairing.create!(guest: sp, pair: gideon)
dracula = Guest.create!(first_name: "Count", last_name: "Dracula", event: event)
monster = Guest.create!(first_name: "Frankenstein's", last_name: "Monster", event: event)
mummy = Guest.create!(first_name: "The", last_name: "Mummy", event: event)
jason = Guest.create!(first_name: "Jason", last_name: "Voorhees", event: event)
myers = Guest.create!(first_name: "Michael", last_name: "Myers", event: event)
curtis = Guest.create!(first_name: "Jamie Lee", last_name: "Curtis", event: event)
Pairing.create!(guest: dracula, pair: monster)
Pairing.create!(guest: dracula, pair: mummy)
Pairing.create!(guest: dracula, pair: jason)
Pairing.create!(guest: dracula, pair: myers)
Pairing.create!(guest: dracula, pair: curtis)
jconnors = Guest.create!(first_name: "John", last_name: "Connors", event: event)
sconnors = Guest.create!(first_name: "Sara", last_name: "Connors", event: event)
arnold = Guest.create!(first_name: "Arnold", last_name: "Schwarzenegger", event: event)
melty = Guest.create!(first_name: "The Melty One", last_name: "", event: event)
Pairing.create!(guest: jconnors, pair: sconnors)
Pairing.create!(guest: jconnors, pair: arnold)
Pairing.create!(guest: jconnors, pair: melty)
mario = Guest.create!(first_name: "Mario", last_name: "", event: event)
peach = Guest.create!(first_name: "Peach", last_name: "", event: event)
luigi = Guest.create!(first_name: "Luigi", last_name: "", event: event)
daisy = Guest.create!(first_name: "Daisy", last_name: "", event: event)
yoshi = Guest.create!(first_name: "Yoshi", last_name: "", event: event)
toad = Guest.create!(first_name: "Toad", last_name: "", event: event)
bowser = Guest.create!(first_name: "Bowser", last_name: "", event: event)
Pairing.create!(guest: mario, pair: peach)
Pairing.create!(guest: mario, pair: luigi)
Pairing.create!(guest: mario, pair: daisy)
Pairing.create!(guest: mario, pair: yoshi)
Pairing.create!(guest: mario, pair: toad)
Pairing.create!(guest: mario, pair: bowser)
mal = Guest.create!(first_name: "Malcolm", last_name: "Reynolds", event: event)
wash = Guest.create!(first_name: "Hoban", last_name: "Washburne", event: event)
zoe = Guest.create!(first_name: "Zoe", last_name: "Washburne", event: event)
kaylee = Guest.create!(first_name: "Kaylee", last_name: "Frye", event: event)
simon = Guest.create!(first_name: "Simon", last_name: "Tam", event: event)
river = Guest.create!(first_name: "River", last_name: "Tam", event: event)
jayne = Guest.create!(first_name: "Jayne", last_name: "Cobb", event: event)
shepard = Guest.create!(first_name: "Shepard", last_name: "Book", event: event)
inara = Guest.create!(first_name: "Inara", last_name: "Serra", event: event)
Pairing.create!(guest: mal, pair: wash)
Pairing.create!(guest: mal, pair: zoe)
Pairing.create!(guest: mal, pair: kaylee)
Pairing.create!(guest: mal, pair: simon)
Pairing.create!(guest: mal, pair: river)
Pairing.create!(guest: mal, pair: jayne)
Pairing.create!(guest: mal, pair: shepard)
Pairing.create!(guest: mal, pair: inara)
charlie = Guest.create!(first_name: "Charlie", last_name: "Brown", event: event)
linus = Guest.create!(first_name: "Linus", last_name: "", event: event)
lucy = Guest.create!(first_name: "Lucy", last_name: "", event: event)
pp = Guest.create!(first_name: "Peppermint", last_name: "Patty", event: event)
sally = Guest.create!(first_name: "Sally", last_name: "", event: event)
schroeder = Guest.create!(first_name: "Schroeder", last_name: "", event: event)
Pairing.create!(guest: charlie, pair: linus)
Pairing.create!(guest: charlie, pair: lucy)
Pairing.create!(guest: charlie, pair: pp)
Pairing.create!(guest: charlie, pair: sally)
Pairing.create!(guest: charlie, pair: schroeder)
j = Guest.create!(first_name: "jazzer", last_name: "", event: event)
s = Guest.create!(first_name: "saul", last_name: "reskoniff", event: event)
t = Guest.create!(first_name: "takyn-u-run", last_name: "", event: event)
f = Guest.create!(first_name: "fragmania", last_name: "", event: event)
h = Guest.create!(first_name: "humza", last_name: "kazmi", event: event)
c = Guest.create!(first_name: "costin-u-more", last_name: "", event: event)
cpu = Guest.create!(first_name: "cpueaucrat", last_name: "", event: event)
bill = Guest.create!(first_name: "Bill", last_name: "O'Dea", event: event)
Pairing.create!(guest: tariq, pair: j)
Pairing.create!(guest: tariq, pair: s)
Pairing.create!(guest: tariq, pair: t)
Pairing.create!(guest: tariq, pair: f)
Pairing.create!(guest: tariq, pair: h)
Pairing.create!(guest: tariq, pair: c)
Pairing.create!(guest: tariq, pair: cpu)
Pairing.create!(guest: tariq, pair: bill)
snow = Guest.create!(first_name: "Jon", last_name: "Snow", event: event)
arya = Guest.create!(first_name: "Arya", last_name: "Stark", event: event)
brienne = Guest.create!(first_name: "Brienne", last_name: "of Tarth", event: event)
mountain = Guest.create!(first_name: "Gregor", last_name: "Clegane", event: event)
tyrion = Guest.create!(first_name: "Tyrion", last_name: "Lannister", event: event)
oberin = Guest.create!(first_name: "Oberyn", last_name: "Martell", event: event)
joffrey = Guest.create!(first_name: "Joffrey", last_name: "Baratheon", event: event)
Pairing.create!(guest: lesley, pair: christine)
Pairing.create!(guest: lesley, pair: snow)
Pairing.create!(guest: lesley, pair: arya)
Pairing.create!(guest: lesley, pair: brienne)
Pairing.create!(guest: lesley, pair: mountain)
Pairing.create!(guest: lesley, pair: tyrion)
Pairing.create!(guest: lesley, pair: oberin)
Pairing.create!(guest: lesley, pair: joffrey)



guests.length.times do |i|
  Table.create!(event: event, number: i, number_of_seats: 10)
end