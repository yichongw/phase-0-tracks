# nested data structure
library = {
	non_book_section: {
		front_desk: {
			librarian: 5,
			checkout_machine: 10
		},
		media_area: {
			DVD: 200,
			Bluray: 120
		},
		children_area: {
			computers: 15,
			toys: 50
		}
	},
	book_section: {
		paper_backs: ["Fiction", "Non-fiction", "Sci-fi", "Romance"],
		
		general_works: ["Encyclopedias", "Dictionaries", "Indexes", "Yearbooks"],

		social_sciences: ["Statistics", "Finance", "Sociology", "Communities", "Economic"],

		fine_arts: ["Architecture", "Sculpture", "Painting", "Drawing"]
	}
}

# print a few individual pieces of deeply nested data from the structure

p library[:non_book_section][:front_desk]

p library[:non_book_section][:media_area][:Bluray]

p library[:book_section][:fine_arts][2]

library[:book_section][:paper_backs].push("Historical")

p library[:book_section][:paper_backs]

