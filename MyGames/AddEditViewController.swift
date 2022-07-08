//
//  AddEditViewController.swift
//  MyGames
//
//  Created by ICMMAC09-BF7F on 08/07/22.
//

import UIKit

class AddEditViewController: UIViewController {

    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!
    
    var game: Games!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addEditCover(_ sender: UIButton) {
    }
    
    @IBAction func addEditGame(_ sender: UIButton) {
        if game == nil {
            game = Games(context: context)
        }
        game.title = tfTitle.text
        game.releaseDate = dpReleaseDate.date
        
        do{
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
        
        navigationController?.popViewController(animated: true)
    }

}
