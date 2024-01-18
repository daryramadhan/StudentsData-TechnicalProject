//
//  SecondViewController.swift
//  StudentsData
//
//  Created by Dary Ramadhan on 18/01/24.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var studentsData = StudentsDataLocal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsData.students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let students = studentsData.students[indexPath.row]
        
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.address.text = students.address
        cell.profilPicture.image = UIImage(named: students.profilPicture)
        cell.name.text = students.name
        
        return cell
    }
}
