retaskets = {
	cook_family: {
		retasket_sibling: 'Cathy',
		spouse: 'Chester',
		total_children: 1,
		children: ['Amanda'],
		grandchildren: [],
		great_grands: false
	},
	retasket_family1: {
		retasket_sibling: 'Steve',
		spouse: 'Ada',
		total_children: 4,
		children: ['Sharron', 'Dwayne', 'Jason', 'Stephanie'],
		grandchildren: ['Jennifer', 'Joshua', 'Justin', 'Jaimee', 'Nathan', 'Caleb', 'Dakota'],
		great_grands: false
	},
	jameson_family: {
		retasket_sibling: 'Marge',
		spouse: 'Morris',
		total_children: 4,
		children: ['Jackie', 'DeDe', 'Pat', 'Cathy'],
		grandchildren: ['Alisha', 'Joseph', 'Sarah', 'Kiyaka', 'Cueyo', 'Kwistamen', 'Ryan', 'Dylan'],
		great_grands: true
	},
	retasket_family2: {
		retasket_sibling: 'Garry',
		spouse: 'Debbie',
		total_children: 4,
		children: ['Deanna', 'Keith', 'Shonta', 'Melissa'],
		grandchildren: ['Rachael', 'Garry', 'Chanel', 'boy1', 'boy2', 'boy3', 'boy4?'],
		great_grands: false
	},
	retasket_family3: {
		retasket_sibling: 'Wendy',
		spouse: false,
		total_children: 3,
		children: ['Billy', 'Eddie', 'Chance'],
		grandchildren: ['Kelsey', 'Daytona'],
		great_grands: true
	},
	retasket_family4: {
		retasket_sibling: 'Allen',
		spouse: 'Rose',
		total_children: 3,
		children: ['Jodi', 'Shelly', 'Al'],
		grandchildren: ['Garry', 'Jake'],
		great_grands: false
	},
	perronteau_family: {
		retasket_sibling: 'Josephine',
		spouse: 'Doug',
		total_children: 1,
		children: ['Victoria'],
		grandchildren: ['Cara Jo'],
		great_grands: false
	},
	retasket_family5: {
		retasket_sibling: 'Norman',
		spouse: false,
		total_children: 5,
		children: ['Farren', 'Denise', 'Karen', 'Bubs', 'Marcie', 'Trina'],
		grandchildren: ['Becca', 'Alanna', 'Angela', 'Adrian'],
		great_grands: true
	},
	retasket_family6: {
		retasket_sibling: 'Mark',
		spouse: 'Ruth',
		total_children: 3,
		children: ['Steven', 'Matthew', 'Adrian'],
		grandchildren: ['babyboy', 'babygirl'],
		great_grands: false
	},
	retasket_family7: {
		retasket_sibling: 'Mike',
		spouse: 'Cheryl',
		total_children: 2,
		children: ['Carly', 'Jacob'],
		grandchildren: ['Jaime', 'Myra', 'Daniella', 'Lucio'],
		great_grands: false
	},
	retasket_family8: {
		retasket_sibling: 'Jack',
		spouse: false,
		total_children: 3,
		children: ['Shannon', 'Graham', 'Andrea'],
		grandchildren: ['Shaunda'],
		great_grands: false
	}
}

retaskets[:retasket_family5][:grandchildren].push("Ariona")
retaskets[:retasket_family5][:total_children] = 6

p retaskets[:retasket_family5][:total_children]
p retaskets[:retasket_family5][:grandchildren]
p retaskets[:cook_family][:great_grands]
p retaskets[:retasket_family1][:children][2]
p retaskets[:retasket_family1][:children][2].upcase
