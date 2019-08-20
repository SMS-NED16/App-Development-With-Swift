import UIKit

class AthleteTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let athleteCell = "AthleteCell"
        static let editAthleteSegue = "EditAthlete"
    }
    
    var athletes: [Athlete] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return athletes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.athleteCell, for: indexPath)
        
        let athlete = athletes[indexPath.row]
        cell.textLabel?.text = athlete.name
        cell.detailTextLabel?.text = athlete.description
        
        return cell
    }


    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
 */
    // Casting segue destination from UIViewController to AthleteFormViewController
    // Each row in the table has an index which we can use to get a path that describes
    // how to get to that row in the table.
    // If the segue being triggered is one of `edit athlete` i.e. it has been triggered
    // by clicking on an existing cell, then use the index path to get the selected athlete
    // and load it into the athleteFormViewController before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Check if the segue is to edit an existing athlete
        let athleteFormViewController = segue.destination as! AthleteFormViewController
        if let indexPath = tableView.indexPathForSelectedRow,
            segue.identifier == PropertyKeys.editAthleteSegue {
            athleteFormViewController.athlete = athletes[indexPath.row]
        }
    }
    
    // IB Action that handles data being returned from the form view controller
    @IBAction func updateAthletesTable(segue: UIStoryboardSegue) {
        // Cast the segue's source as an AthleteFormViewController
        let segueSource = segue.source as! AthleteFormViewController
        let athlete = segueSource.athlete!      // force unwrapping - not best idea
        
        // Find the index path in the table view controller that was selected before
        // going to the segue's source. If this is unwrapped successfully, the user
        // clicked on an existing athlete to edit its details, so find the athlete
        // using its index path, replace it with the edited athlete
        if let indexPath = tableView.indexPathForSelectedRow {
            athletes.remove(at: indexPath.row)
            athletes.insert(athlete, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            // if cannot unwrap the indexPath, did not select an existing athlete
            // which means segue was done to add a new athlete
            // so append returned athlete to end of list
            athletes.append(athlete)
        }
    }
}
