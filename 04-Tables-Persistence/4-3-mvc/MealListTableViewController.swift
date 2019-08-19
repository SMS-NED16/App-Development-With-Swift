class MealListTableViewController: UITableViewController {
	// MARK:- INSTANCE PROPERTIES
	var meals: [Meal] = []				// a list of all meals the table will display

	// MARK:- IB OUTLETS
	@IBOutlet weak var tableView: UITableView!

	// MARK:- INSTANCE METHODS/PERSISTENCE METHODS
	// Read write methods must be implemented in this class because it is the controller
	// i.e. the intermediary between the view and the model
	func saveMeals() {
		// some functionality to save meals to the array
	}

	func loadMeals() {
		// some functionality to load meals into the array
	}

	// MARK:- Required Table View Methods
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// some functionality
	}

	override func tableView(_ tableView, UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// some functionality
	}

	// MARK:- NAVIGATION METHODS
	// Table displays a list of individual items which, when tapped, segues to a new view with more details
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// Pass the selected meal to the MealDetailViewController
	}

	// MARK:- IB ACTIONS
	@IBAction func unwindToMealList(sender: UIStoryboardSegue) {
		// Capture the new or updated meal from the MealDetailViewController and save it to the meals property
		// Then return to the updated list of all meals
	}
}