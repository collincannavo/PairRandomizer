//
//  PairRandomTableViewController.swift
//  PairRandomizer
//
//  Created by Collin Cannavo on 7/20/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import UIKit

class PairRandomTableViewController: UITableViewController {

    var person = PersonController.shared.people
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        if person.count % 2 == 0 {
            return person.count / 2
        } else if person.count / 1 == 1 {
            return person.count
        } else {
            return person.count
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)

        let person = PersonController.shared.people[indexPath.row]
        

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    
    func addPerson() {
        
    }

}


















