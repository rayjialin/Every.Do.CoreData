//
//  DetailViewController.swift
//  Every.Do.CoreData
//
//  Created by ruijia lin on 5/16/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailPriority: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                  label.text = detail.todoDescription
            }
            
            if let label = detailTitle {
                label.text = detail.title
            }
            
            if let label = detailPriority {
                label.text = detail.priority
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Todo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

