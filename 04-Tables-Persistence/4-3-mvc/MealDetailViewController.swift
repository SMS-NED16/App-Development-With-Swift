class MealDetailViewController: UIViewController {
	// MARK:- INSTANCE PROPERTIES
	var meal: Meal?


	// MARK:- IB OUTLETS
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var photoImageView: UIImageView!
	@IBOutlet weak var ratingControl: RatingControl!
	@IBOutlet weak var saveButton: UIBarButtonItem!

	// MARK:- LIFECYCLE METHODS
	override func viewDidLoad() {
		// Individual model object properties are usually optionals - difficult to override initializers
		// for view controllers insantiated or created from the storyboard
		// The following code attempts to unwrap the optional and updates the view with the unwrapped model object
		if let meal = meal {
			update(meal)
		}
	}

	// MARK:- INSTANCE METHODS
	func update(_ meal: Meal) {
		// Update all outelts to reflect the data about the meal
	}

	// MARK:- NAVIGATION METHODS
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// Update the meal property that will be accessed by the MealListTableViewController
		// to update the list of meals
	}

	// MARK:- IB ACTIONS
	@IBAction func cancel(_ sender: UIButton) {
		// Dismiss the view without saving the meal
	}
}