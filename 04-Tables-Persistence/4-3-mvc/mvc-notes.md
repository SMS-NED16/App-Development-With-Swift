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