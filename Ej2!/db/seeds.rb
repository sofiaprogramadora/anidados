# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all
User.destroy_all
Group.destroy_all

edm = Group.new(name: 'Grupo Forever EDM!!!')
pop = Group.new(name: 'Grupo pop')
classic = Group.new(name: 'Grupo Classic')
r80s = Group.new(name: 'Grupo Rock 80\'s')

s = User.new(name: 'sofia_edm', group: edm)
mg = User.new(name: 'martin_garrix_oficial', group: edm)

pfu = User.new(name: 'pop_first_user', group: pop)
ppp = User.new(name: 'pop_pop_pop', group: pop)


rcc = User.new(name: 'rcio_classic', group: classic )
drc = User.new(name: 'dranaclass', group: classic )


nl = User.new(name: 'nicols', group: r80s)
onl = User.new(name: 'otro_nicols', group: r80s)


# EDM IS LIFE!!!
nota_edm = Note.new(title: "EDM is life", body: "I hope i can go to the MGE next year...", user: s)
nota_life = Note.new(title: "I live in my own world", body: "Hearing @martin_garrix_official", user: s)

nota_edm_mg = Note.new(title: "Coming to Chile next week", body: "Now you can see me @sofia_edm ;)", user: mg)
nota_life_mg = Note.new(title: "New colab. with @Illenium, @AW, and @keep_it_mello !!!", body: "Stay tuned for more info ;)", user: mg)

#POP

pop1 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: ppp)
pop2 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: ppp)

pop3 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: pfu)
pop4 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: pfu)

# Classic

nota_class1 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: rcc)
nota_class2 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: rcc)

nota_class3 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: drc)
nota_class4 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: drc)

# Rock

notar = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: nl)
notar2 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: nl)

notar3 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: onl)
notar4 = Note.new(title: "Lorem ipsum", body: "I\' a lorem ipsum!!!", user: onl)

edm.save
pop.save
classic.save
r80s.save
s.save
mg.save
pfu.save
ppp.save
rcc.save
drc.save
nl.save
onl.save

nota_edm.save
nota_life.save
nota_edm_mg.save
nota_life_mg.save
pop1.save
pop2.save
pop3.save
pop4.save
nota_class1.save
nota_class2.save

nota_class3.save
nota_class4.save
notar.save
notar2.save
notar3.save
notar4.save