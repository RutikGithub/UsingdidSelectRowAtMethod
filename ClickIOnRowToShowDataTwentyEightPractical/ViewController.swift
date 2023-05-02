//
//  ViewController.swift
//  ClickIOnRowToShowDataTwentyEightPractical
//
//  Created by Mac on 28/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstTableView: UITableView!
    
    var secondViewController:SecondViewController?
    
    var pName:[String]=["MS Dhoni","Virat Kolhi","Rohit Sharma","Sachin Tendulkar"]
    var pImages:[String]=["dhoni","kolhi","sharma","tendulkar"]
    var desc:[String]=["Mahendra Singh Dhoni, commonly known as MS Dhoni, is a former Indian cricketer and captain of the Indian national team in limited-overs formats from 2007 to 2017 and in Test cricket from 2008 to 2014, who plays as a Wicket-keeper-Batsman. ","Virat Kohli is an Indian international cricketer and the former captain of the Indian national cricket team who plays as a right-handed batsman for Royal Challengers Bangalore in the IPL and for the Delhi in Indian domestic cricket.","Rohit Gurunath Sharma, is an Indian international cricketer and the current captain of India men’s cricket team in all formats. Considered one of the best batsmen of his generation and one of greatest opening batters of all time, Sharma is known for his timing, elegance, six-hitting abilities and leadership skills.","Sachin Ramesh Tendulkar, AO is an Indian former international cricketer who captained the Indian national team. He is regarded as one of the greatest batsmen in the history of cricket. He is the all-time highest run-scorer in both ODI and Test cricket with more than 18,000 runs and 15,000 runs, respectively."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXIB()
        // Do any additional setup after loading the view.
    }

func registerXIB()
    {
        
        self.firstTableView.register(UINib(nibName: "PlayeTableViewCell", bundle: nil), forCellReuseIdentifier: "PlayeTableViewCell")
        
    }
    
}
extension ViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellData = self.firstTableView.dequeueReusableCell(withIdentifier: "PlayeTableViewCell", for: indexPath) as? PlayeTableViewCell
        
        cellData?.playerImages.image = UIImage(named: pImages[indexPath.row])
        cellData?.playerName.text = pName[indexPath.row]
      
        return cellData!
    }
    
    
}
extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        secondViewController  = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        secondViewController?.container = desc[indexPath.row]
        navigationController?.pushViewController(secondViewController!, animated: true)
    
    }
}


