//
//  AddEditTableViewController.swift
//  AddEditTableViewController
//
//  Created by Evgeniy Goncharov on 01.09.2021.
//

import UIKit

class AddEditTableViewController: UITableViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usage: UITextField!
    
    
    // MARK: - Properties
    var emoji = EmojiModel()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    // MARK: - Private Methods
    func updateUI() {
        symbolTextField.text = emoji.symbol
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
        usage.text = emoji.usege
    }
    
    func saveEmoji() {
        emoji.symbol = symbolTextField.text ?? ""
        emoji.name = nameTextField.text ?? ""
        emoji.description = descriptionTextField.text ?? ""
        emoji.usege = usage.text ?? ""
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#line, #function, segue.identifier ?? "nil")
        saveEmoji()
    }
    

}
