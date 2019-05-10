//
//  FormTextCell.swift
//  RSFormView
//
//  Created by Germán Stábile on 3/12/19.
//  Copyright © 2019 Rootstrap. All rights reserved.
//

import Foundation
import UIKit

class FormTextCell: UITableViewCell {
  
  static let reuseIdentifier = "FormTextCellIdentifier"
  @IBOutlet weak var formTextLabel: UILabel!
  
  func update(withAttributedText attributedText: NSAttributedString, formConfigurator: FormConfigurator? = nil) {
    if let cellBackgroundColor = formConfigurator?.fieldsBackgroundColor {
      contentView.backgroundColor = cellBackgroundColor
      backgroundColor = cellBackgroundColor
    }
    formTextLabel.attributedText = attributedText
  }
}
