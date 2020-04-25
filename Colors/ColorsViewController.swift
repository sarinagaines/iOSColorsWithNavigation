//
//  ColorsViewController.swift
//  Colors
//
//  Created by Sarina Gaines on 3/1/20.
//  Copyright © 2020 Sarina Gaines. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    var colors = [
        Color(color: "red", background: UIColor.red),
        Color(color: "orange",background: UIColor.orange),
        Color(color: "yellow", background: UIColor.yellow),
        Color(color: "green", background: UIColor.green),
        Color(color: "blue", background: UIColor.blue),
        Color(color: "purple", background: UIColor.purple),
        Color(color:"brown", background: UIColor.brown)]

    @IBOutlet weak var colorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Colors"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)

        cell.textLabel?.text = colors[indexPath.row].color
        cell.backgroundColor = colors[indexPath.row].background

        return cell
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let destination = segue.destination as? ColorDetailViewController,
              let row = colorsTableView.indexPathForSelectedRow?.row {
              destination.color = colors[row]
        }
        
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

