//
//  LessonTableViewController.swift
//  CoreDataProjectTest
//
//  Created by macadmin on 08/01/22.
//

import UIKit

class LessonTableViewController: UITableViewController {

    var students = ["Mahesh", "Prince"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let navBarAppearance = UINavigationBarAppearance()
                navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = .orange

                navigationController?.navigationBar.standardAppearance = navBarAppearance
                navigationController?.navigationBar.compactAppearance = navBarAppearance
                navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance

                navigationController?.navigationBar.prefersLargeTitles = true
                navigationController?.navigationBar.isTranslucent = false
                navigationController?.navigationBar.tintColor = UIColor.white
                navigationItem.title = "KeyStone Lessons"
        
    }

    @IBAction func addButtonDidPressed(_ sender: Any) {
        let alertController = self.showAlertController(actionType: "Add")
        self.present(alertController, animated: true, completion: nil)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonCell", for: indexPath)

        cell.textLabel?.text = students[indexPath.row]

        return cell
    }

}


extension LessonTableViewController {
    func showAlertController(actionType: String) -> UIAlertController {
        let controller = UIAlertController(title: "KetStone Lesson", message: "Student Info", preferredStyle: .alert)
        controller.addTextField { textField in
            textField.placeholder = "Name"
        }
        
        controller.addTextField { textField in
            textField.placeholder = "Lesson Type"
        }
        
        let addAction = UIAlertAction(title: actionType, style: .default) { _ in
            
        }
        
        controller.addAction(addAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        controller.addAction(cancelAction)
        
        return controller
    }
}
