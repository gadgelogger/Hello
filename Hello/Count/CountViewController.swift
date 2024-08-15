//
//  CountViewController.swift
//  Hello
//
//  Created by gadgelogger on 2024/07/28.
//

import UIKit

class CountViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var countData = 0
    var results: [Int] = []
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func countDown(_ sender: Any) {
        if countData > 0 {
            countData -= 1
            counter.text = String(countData)
        }
    }
    
    @IBAction func countUp(_ sender: Any) {
        countData += 1
        counter.text = String(countData)
    }
    
    @IBAction func saveCount(_ sender: Any) {
        results.append(countData)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = String(results[indexPath.row])
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableViewのデータソースとデリゲートを設定
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
