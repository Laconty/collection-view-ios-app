/**
 * Copyright (c) Roman Maklakov
 * Created by Roman Maklakov on 20/12/18.
 * Copyright © 2018 Roman Maklakov. All rights reserved.
 */

import UIKit

class Park {
	var name: String
	var state: String
	var date: String
	var photo: String
	var index: Int
	
	init(name: String, state: String, date: String, photo: String, index: Int) {
		self.name = name
		self.state = state
		self.date = date
		self.photo = photo
		self.index = index
	}
	
	convenience init(copying park: Park) {
		self.init(name: park.name, state: park.state, date: park.date, photo: park.photo, index: park.index)
	}
}
