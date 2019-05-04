# require 'faker'

Ally.destroy_all

Ally.create(
  id: 1,
  name: "Arya Stark",
  house: "Stark",
  strength: "Assassination"
)

Ally.create(
  id: 2,
  name: "Tyrion Lannister",
  house: "Lannister",
  strength: "Mental Acuity"
)

Ally.create(
  id: 3,
  name: "Samwell Tarley",
  house: "Formerly House Tarley",
  strength: "Insightfullness"
)

Ally.create(
  id: 4,
  name: "Jaimie Lannister",
  house: "Lannister",
  strength: "Experience"
)

puts "Allies created: #{Ally.all.count}"
