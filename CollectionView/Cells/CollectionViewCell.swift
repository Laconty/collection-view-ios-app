/**
 * Copyright (c) 2018 Roman Maklakov
 *
 * Created by Roman Maklakov on 20/12/18.
 * Copyright © 2018 Roman Maklakov. All rights reserved.
 */

import UIKit

class CollectionViewCell: UICollectionViewCell {
	@IBOutlet private weak var titleLabel:UILabel!
	@IBOutlet private weak var selectionImage:UIImageView!
    @IBOutlet private weak var mainImage: UIImageView!
    
    var park: Park? {
        didSet {
            if let park = park {
                print(park.name)
                mainImage.image = UIImage(named: park.photo)
                titleLabel.text = park.name
            }
        }
    }
    
	var isEditing: Bool = false {
		didSet {
			selectionImage.isHidden = !isEditing
		}
	}
	
	override var isSelected: Bool {
		didSet {
			if isEditing {
				selectionImage.image = isSelected ? UIImage(named: "Checked") : UIImage(named: "Unchecked")
			}
		}
	}
    
    override func prepareForReuse() {
        mainImage.image = nil
        
    }
}
