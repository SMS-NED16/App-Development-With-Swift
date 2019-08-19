//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Saad Mashkoor Siddiqui on 19/08/2019.
//

import UIKit

class AthleteFormViewController: UIViewController {
    // IB Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    var athlete: Athlete?           // optional - can be nil if coming from 'add', non-nil if edit
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateView()
    }
    
    func updateView() {
        if let athlete = athlete {
            
            nameTextField.text = athlete.name
            ageTextField.text = String(athlete.age)
            leagueTextField.text = athlete.league
            teamTextField.text = athlete.team
        }
    }
    
    @IBAction func saveAthlete(_ sender: Any) {
        guard let athleteName = nameTextField.text,
        let athleteAge = ageTextField.text,
        let athleteLeague = leagueTextField.text,
            let athleteTeam = teamTextField.text else { return }
        
        athlete = Athlete(name: athleteName, age: Int(athleteAge)!, league: athleteLeague, team: athleteTeam)
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
