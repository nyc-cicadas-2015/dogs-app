INITIAL_DOG_POPULATION = [
  ["Byron", "Poodle"],
  ["Lassie", "Collie"],
  ["Cujo", "St. Bernard"],
  ["Ollivander", "Terrier or something"]
]



INITIAL_DOG_POPULATION.each do |name, breed|
  puts "Creating #{name}"
  Dog.create(name: name, breed: breed)
end
