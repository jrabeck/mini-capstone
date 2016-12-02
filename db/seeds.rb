seed = User.create(name: "seed", email: "seed@email.com", password: "seed", password_confirmation: "seed")
jake = User.create(name: "Jake", email: "jake@email.com", password: "jake", password_confirmation: "jake")

warehouse = Supplier.create(name: "Warehouse", email: "Warehouse@email.com", phone: "444-4444")

Album.create!([
  {title: "Magical Mystery Tour", artist: "The Beatles", genre: "Pop", price: "30.0", description: "A Psychadelic departure", user_id: seed.id, supplier: warehouse},
  {title: "Help", artist: "The Rutles", genre: "Rock", price: "10.0", description: "discovered pot", user_id: seed.id, supplier: warehouse},
  {title: "Rubber Soul", artist: "The Beatles", genre: "Pop", price: "40.0", description: "The first concept album", user_id: jake.id, supplier: warehouse},
  {title: "Beatles for Sale", artist: "The Beatles", genre: "Pop", price: "40.0", description: "Lame cover", user_id: jake.id, supplier: warehouse},
  {title: "Yellow Submarine", artist: "The Beatles", genre: "Pop", price: "40.0", description: "Soundtrack", user_id: jake.id, supplier: warehouse}
])

Image.create ([
	{image_url: "https://upload.wikimedia.org/wikipedia/en/8/85/TheBeatlesMagicalMysteryTouralbumcover.jpg", album_id: 1}, 
	{image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5c/HelpUSalbumcover.jpg/220px-HelpUSalbumcover.jpg", album_id: 2},
	{image_url: "https://upload.wikimedia.org/wikipedia/en/7/74/Rubber_Soul.jpg", album_id: 3},
	{image_url: "http://d817ypd61vbww.cloudfront.net/sites/default/files/tile/image/BeatlesForSale_1.jpg", album_id: 4},
	{image_url: "https://upload.wikimedia.org/wikipedia/en/a/ac/TheBeatles-YellowSubmarinealbumcover.jpg", album_id: 5},
	])


Category.create ([
	{name: "Pop"},
	{name: "Rock"}
])
	


AlbumCategory.create ([
	{album_id: 1, category_id: 1},
	{album_id: 2, category_id: 1},
	{album_id: 3, category_id: 1},
	{album_id: 4, category_id: 2},
	{album_id: 5, category_id: 2},
	])	

