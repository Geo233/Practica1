//
//  ViewController.swift
//  test2
//
//  Created by George - Dorin NEGRAU on 16.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table : UITableView!
    
        func didTapButton(){
        
        let vc = CustomTableViewCell()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    struct Animals {
        
        let title: String
        let imageName: String
        
    }
    
    let data: [Animals] = [
        
        Animals(title: "Cat", imageName: "cat"),
        Animals(title: "Dog", imageName: "dog"),
        Animals(title: "Bird", imageName: "bird"),
        Animals(title: "Reptile", imageName: "reptile"),

        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animals = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = animals.title
        cell.iconImageView.image = UIImage(named: animals.imageName)
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController {
            let animals = data[indexPath.row]
           // vc.img = UIImage(named: )
            vc.name = animals.title
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}
    
