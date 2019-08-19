# App Development with Swift - 4.3 - Model View Controller

## Introduction
- MVC is a design pattern: a common way of organising, structuring, and interconnecting complex programs.
- Even moderately complex programs span several files and make use of several custom classes and structures.
- In deciding how these files should be arranged and how these software constructs should interact with each other, we need to ask
	- Which new classes or structures should we create?
	- What properties do these classes or structures have?
	- Which objects should call functions on other objects?
	- How to organize the files for the project?
- All of these questions are answered - to some extent - by following a design pattern.
- One of the most common design patterns in use today is the **M**odel **V**iew **C**ontroller or **MVC** pattern.
- In the MVC pattern, each object of a class is assigned one of three roles
	- Model
	- View 
	- Controller	
- This role determines how the objects interact with each other.

## Model
- Groups together all the data or information we need to solve a problem.
- Support inheritance and composition: one model may inherit from another, or have a reference to another model as a property.
- Created as instances of a structure or class.
- Properties represent the attributes of the model. May also have functions to update or modify these properties.
- Will only communicate with controllers, and not with the views in an app.
- Model objects are usually created or modified as a result of user interaction with a view which is then transmitted through the controller to the model.

## View
- What the user sees: the visual aspects of the user interface. 
- Knows how to draw itself on the screen and how to respond to user input.
- Displays data about the app's model objects to the user, allows user to edit that data.
- The same view can be reused/recycled to display data about different instances of the same kind of object using its `update` or `configure` methods.
- Should never own a model or have a model as a property - cannot communicate directly with models.
- Can only send a message such as a notification or event to a view controller.

## Controller
- Acts as a messenger between views and models. 
	- If view registers a user event such as an interaction, can send a message to the controller to create/modify the appropriate model.
	- If model updated, can send a callback to the controller to instruct the view that to update and redraw itself.
- **Model Controllers** are used to control a specific object or collection of objects.
- **Helper Controllers** consolidate and combine properties and functionality for a collection of objects so that it can be accessed by other objects e.g. `NetworkController` deals solely with networking and server communication.