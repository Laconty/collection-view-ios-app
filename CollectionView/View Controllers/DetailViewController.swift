/**
 * Copyright (c) 2018 Roman Maklakov
 *
 * Created by Roman Maklakov on 20/12/18.
 * Copyright © 2018 Roman Maklakov. All rights reserved.
 */

import UIKit

class DetailViewController: UIViewController {
	@IBOutlet private weak var imageView: UIImageView!
	@IBOutlet private weak var nameLabel: UILabel!
	@IBOutlet private weak var stateLabel: UILabel!
	@IBOutlet private weak var dateLabel: UILabel!
	
	var park: Park?

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		// Display Park info
		if let park = park {
			navigationItem.title = park.name
			imageView.image = UIImage(named: park.photo)
			nameLabel.text = park.name
			stateLabel.text = park.state
			dateLabel.text = park.date
		}
	}
}
