//
//  ViewController.swift
//  MedicalApp
//
//  Created by Khawaja on 6/21/20.
//  Copyright © 2020 Khawaja Firm. All rights reserved.
//

import UIKit

//Important variable, used for counters
var i = 0
var progress = 0.0
//question counter
var x = 1
var c = 0
var myIndex = -1

let QuestionerChest = ChestPain()

class ChestPain {
    
    let Question1 = "q1 Does your pain worsen with movement?"
    let Question2 = "q2 Are you experiencing tingling?"
    let Question3 = "Is the pain severe and constant?"
    let Question4 = "Does your pain limit your movement?"
    let Question5 = "Are you experiencing leg pain?"
    let Question6 = "Do you have lower-back pain?"
    let Question7 = "Do you have a backache?"
    let Question8 = "Does the pain radiate from one location to another?"
    let Question9 = "Is the pain constant and dull?"
    let Question10 = "Are you experiencing bone pain?"
    let Question11 = "Are you currently experiencing anxiety or depression?"
    
    let Traumatic1 = "Did you experience sudden pain?"
    let Infective1 = "Are you experiencing night sweats or cough?"
    let Infective2 = "Have you experienced malaise, fever, pain,or tenderness?"
    let Neoplastic1 = "Did you ever have a tumor?"
    let Metabolic1 = "Are you a female?"
    let Idiopathic1 = "Are you over the age of 40?"
    let Idiopathic2 = "Have you experienced face enlargement?"
    let Visceral1 = "Is the pain relieved by food or antiacids?"
    let Visceral2 = "Do you have a history of weight loss?"
    
    var specificQuestion = "PH"
    var comm = ViewController()
    //for array, 0 Traumatic, 1 Infective, 2 Inflammatory, 3 Neoplastic, 4 Degenerative, 5 Metabolic, 6 Idiopathic, 7 Psychogenic, 8 Visceral, 9 Vascular, 10 Renal,11 Gynaecological
    func Questions(boo:Int) -> String{
        if (x == 1) {
            if (boo == 1) {//yes
                //used to start
                
            }
            if (boo == 0) {//no
                //used to start
            }
            progress = 0.1
            specificQuestion = self.Question1
            
        }
        else if (x == 2) {
            if (boo == 1) {//yes
                print("Question 1 YES")
                comm.AddPoints(disease:0)
                comm.AddPoints(disease:4)
            }
            if (boo == 0) {//no
                //used to start
            }
            progress = 0.2
            specificQuestion = self.Question2
        }
        else if (x == 3) {
            if (boo == 1) {//yes
                print("Question 2 YES")
                comm.AddPoints(disease:0)
                comm.AddPoints(disease:4)
                comm.AddPoints(disease:9)
            }
            if (boo == 0) {//no
            }
            progress = 0.3
            specificQuestion = self.Question3
        }
        else if (x == 4) {
            if (boo == 1) {//yes
                print("Question 3 YES")
                comm.AddPoints(disease:1)
                comm.AddPoints(disease:3)
            }
            if (boo == 0) {//no
            }
            progress = 0.4
            specificQuestion = self.Question4
        }
        else if (x == 5) {
            if (boo == 1) {//yes
                print("Question 4 YES")
                comm.AddPoints(disease:1)
                comm.AddPoints(disease:2)
            }
            if (boo == 0) {//no
            }
            progress = 0.5
            specificQuestion = self.Question5
        }
        else if (x == 6) {
            if (boo == 1) {//yes
                print("Question 5 YES")
                comm.AddPoints(disease:1)
                comm.AddPoints(disease:4)
                comm.AddPoints(disease:11)
            }
            if (boo == 0) {//no
            }
            progress = 0.55
            specificQuestion = self.Question6
        }
        else if (x == 7) {
            if (boo == 1) {//yes
                print("Question 6 YES")
                comm.AddPoints(disease:3)
                comm.AddPoints(disease:6)
            }
            if (boo == 0) {//no
            }
            progress = 0.6
            specificQuestion = self.Question7
        }
        else if (x == 8) {
            if (boo == 1) {//yes
                print("Question 7 YES")
                comm.AddPoints(disease:8)
                comm.AddPoints(disease:10)
            }
            if (boo == 0) {//no
            }
            progress = 0.65
            specificQuestion = self.Question8
        }
        else if (x == 9) {
            if (boo == 1) {//yes
                print("Question 8 YES")
                comm.AddPoints(disease:10)
                comm.AddPoints(disease:8)
            }
            if (boo == 0) {//no
            }
            progress = 0.7
            specificQuestion = self.Question9
        }
        else if (x == 10) {
            if (boo == 1) {//yes
                print("Question 9 YES")
                comm.AddPoints(disease:5)
            }
            if (boo == 0) {//no
            }
            progress = 0.75
            specificQuestion = self.Question10
        }
        else if (x == 11) {
            if (boo == 1) {//yes
                print("Question 10 YES")
                comm.AddPoints(disease:7)
            }
            if (boo == 0) {//no
            }
            progress = 0.8
            specificQuestion = self.Question11
        }
            
        else if (x > 11) {
            if (boo == 1) {//yes
                print("Question 11 YES")
                comm.AddPoints(disease:8)
                comm.AddPoints(disease:10)
            }
            if (boo == 0) {//no
            }
            
            if(comm.points[0] > 1) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 0.85
                    specificQuestion = Traumatic1
                    comm.pointset[0] = comm.points[0]
                    comm.points[0] = 0
                    x = 11
                }
            }
            else if(comm.points[1] > 1) {
                if (x == 12) {
                    if (boo == 1) {//yes
                        comm.AddPoints(disease:0)
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Infective1
                    print("X\(x)")
                }
                if (x == 13) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Infective2
                    
                }
                if (x == 14) {
                    if (boo == 1) {//yes
                        comm.AddPoints(disease: 1)
                    }
                    if (boo == 0) {//no
                        
                    }
                    comm.pointset[1] = comm.points[1]
                    comm.points[1] = 0
                    x = 11
                }
                
            }
            else if(comm.points[3] > 0) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Neoplastic1
                }
            }
            else if(comm.points[5] > 1) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Metabolic1
                }
            }
            else if(comm.points[6] > 0) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Idiopathic1
                }
            }
            else if(comm.points[6] > 1) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Idiopathic2
                }
            }
            else if(comm.points[8] > 0) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Visceral1
                }
            }
            else if(comm.points[8] > 1) {
                if (x == 12) {
                    if (boo == 1) {//yes
                    }
                    if (boo == 0) {//no
                    }
                    progress = 1
                    specificQuestion = Visceral2
                }
            }
            else if (x == 13) {
                if (boo == 1) {
                }
                if (boo == 0) {
                }
            }
        }
        
            
        x += 1
    return specificQuestion
    }
}
           
   class BackPain {
       
       
       
   }


class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var Question: UILabel!
    
    @IBOutlet weak var yesButtonInstance: UIButton!
    @IBOutlet weak var noButtonInstance: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var versionNumber: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.layer.cornerRadius = 10
        progressBar.clipsToBounds = true
        
        tableView.delegate = self
        tableView.dataSource = self
        self.noButtonInstance.isHidden = true
        self.yesButtonInstance.isHidden = true
        self.tableView.isHidden = true
    
        let version = 1.0
        versionNumber.text = "V\(version)"
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.questionAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.tableView.isHidden = false
                
            }
        }
        
    }
    func startQuestions() {
    
        self.noButtonInstance.isHidden = false
        self.yesButtonInstance.isHidden = false
        
    }
    
    
    
    
    
    //Function for the animation of questions after they are answered
    func questionAnimation() {
        progressBar.progress = Float(progress)
        
        UIView.animate(withDuration: 2.0, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: UIView.AnimationOptions(rawValue: 0), animations: {
            
            self.Question.center = CGPoint(x:190 + 3000, y:100)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 1.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions(rawValue: 0), animations: {
            
            
            self.Question.center = self.view.center
        }, completion: nil)
        
    }

    
        //Going to be an array
    var points = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var pointset = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    func AddPoints(disease:Int) {
        points[disease] = points[disease] + 1
        print(points[disease])
    }
    
    
    @IBAction func yesButton(_ sender: Any) {
        questionAnimation()
        if (myIndex == 0) {
            //create instances for specific types of disease
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.Question.text = QuestionerChest.Questions(boo:1)
            }
            //call the specific disease function for questions
            
        }
        if (myIndex == 1) {
            
        }
        
    }
    @IBAction func noButton(_ sender: Any) {
        questionAnimation()
        if (myIndex == 0) {
            //create instances for specific types of disease
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.Question.text = QuestionerChest.Questions(boo:0)
            }
            //call the specific disease function for questions
            
        }
        
    }
    
    
    var choices = ["Chest","Back","Disease 3","Disease 4"]
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        print(myIndex)
        self.tableView.isHidden = true
        Question.text = "Click to begin."
        startQuestions()
        
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choices.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell01", for: indexPath)
        
        cell.textLabel?.text = choices[indexPath.row]
        return cell
    }
    
    
    
}

    


