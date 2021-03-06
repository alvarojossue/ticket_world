
concert_1 = Concert.create(artist: "Mana", venue: "American Airlines Arena", city: "Miami", date: Date.today, price: 100, description: "No doubt about it, multiple Grammy-award-winning band Maná are the undisputed kings of Latin rock, selling more albums and concert tickets than any other Latin rock act in history.")
concert_2 = Concert.create(artist: "Daddy Yankee", venue: "Bank of America Center", city: "Fort Lauderdale", date: Date.tomorrow, price: 120, description: "Puerto Rican singer-songwriter Daddy Yankee, née Raymond Ayala, is credited with introducing reggaeton to US audiences with the international success of his 2004 album Barrio Fino.")
concert_3 = Concert.create(artist: "Don Omar", venue: "American Airlines Arena", city: "Miami", date: Date.today + 1.week, price: 110, description: "Few have done more to bring Reggaeton to mass audiences than Puerto Rico's Don Omar.")
concert_4 = Concert.create(artist: "Rihanna", venue: "American Airlines Arena", city: "Miami", date: Date.today + 2.week, price: 150, description: "Rihanna is nothing if not prolific.")
concert_5 = Concert.create(artist: "Michael Jackson", venue: "American Airlines Arena", city: "Miami", date: Date.today + 3.week, price: 200, description: "King of Pop")

concert_1.comments.create(name: "Alvaro", date: Date.today, comment: "Buenisimo")