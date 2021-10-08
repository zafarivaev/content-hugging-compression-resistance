//
//  ViewController.swift
//  AutoLayout
//
//  Created by Zafar on 05/10/21.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        self.view.backgroundColor = .white
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 100
        
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView
            .dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.title = "Title"
        cell.subtitle = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies massa vel libero cursus, id lobortis risus congue."
        
        return cell
    }
    
    /*
     
     Content Hugging: whichever view has lowest value, will expand. (I wanna grow but I have resistance, so if resistance is low, I WILL grow)
     Compression Resistance: whichever view has lowest value, will shrink. (I wanna shrink but I have resistance, so if resistance is low, I WILL shrink)
     
     GUIDELINE: Set Content-Hugging for cases when content is less than its intrinsic size. Set Compression Resistance for cases when content is larger than its intrinsic size.
     
     */

}

