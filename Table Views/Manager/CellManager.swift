//
//  CellManager.swift
//  CellManager
//
//  Created by Evgeniy Goncharov on 01.09.2021.
//

import UIKit

class CellManager {
    func configure(_ cell: EmojiCell, with emoji: EmojiModel) {
        cell.symbolLabel.text = emoji.symbol
        cell.nameLabel.text = emoji.name
        cell.descriptionLabel.text = emoji.description
    }
}
