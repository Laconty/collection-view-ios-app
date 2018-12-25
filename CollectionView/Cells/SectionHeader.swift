/**
 * Copyright (c) 2018 Roman Maklakov
 *
 * Created by Roman Maklakov on 20/12/18.
 * Copyright © 2018 Roman Maklakov. All rights reserved.
 */

import UIKit

class SectionHeader: UICollectionReusableView {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var flagImage: UIImageView!
    @IBOutlet private weak var countLabel: UILabel!
    
    var section: Section? {
        didSet {
            titleLabel.text = section!.title
            flagImage.image = UIImage(named: section!.title!)
            countLabel.text = String(section!.count)
        }
    }
}
