//
//  ViewController.swift
//  Kollektor
//
//  Created by Jef Cunningham on 4/10/17.
//  Copyright © 2017 Jef Cunningham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var games : [Game] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // this only happens the first time
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // this happens every time we come to the view
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            try games = context.fetch(Game.fetchRequest())
            print(games)
            tableView.reloadData()
        } catch {
    
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let game = games[indexPath.row]
        cell.textLabel?.text = game.title
        cell.imageView?.image = UIImage(data: game.image as! Data)
        return cell
        
    }


}

