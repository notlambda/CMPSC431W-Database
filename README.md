CLI Interface Documentation

Overview: The CLI interface provides a simple way to interact with a PostgreSQL database for managing vehicle sales data. It offers various functionalities to perform operations such as listing vehicles, adding new sales, updating vehicle conditions, and more.

Usage:
1.	Ensure that Python and psycopg2 library are installed on your system.
2.	Run the Python script (db.py) in a terminal or command prompt.

Functionality:
1.	List All Vehicles

    •	Displays all vehicles currently stored in the database.

  	•	Output includes make, model, and trim for each vehicle.
  	
3.	Show Vehicle Instances

    •	Displays all vehicle instances with details such as VIN, year, condition, odometer, and more.
  
5.	Add New Vehicle
   
    •	Allows users to add a new vehicle to the database.
  
    •	Prompts for make, model, and trim of the vehicle.
  
7.	Update Vehicle Condition
   
    •	Updates the condition of a specific vehicle instance identified by its VIN.
  
    •	Prompts for the VIN of the vehicle and the new condition.
  
9.	Delete Vehicle Instance

    •	Deletes a specific vehicle instance from the database.
  
    •	Prompts for the VIN of the vehicle instance to delete.

10.	List All Sales
    
    •	Displays all sales records stored in the database.
  
    •	Output includes VIN, seller, selling price, and sale date for each sale.
  
12.	Add New Sale
    
    •	Allows users to add a new sale record to the database.
  
    •	Prompts for VIN, seller name, selling price, and sale date.
  
14.	Total Sales Report
    
    •	Calculates and displays the total sales amount from all sale records in the database.
  
16.	Show Vehicle by VIN
    
    •	Displays details of a specific vehicle instance based on its VIN.
  
    • Prompts for the VIN of the vehicle instance to retrieve.
  
18.	Add Seller
    
    •	Allows users to add a new seller to the database.
  
    •	Prompts for the name of the seller.
  
20.	Exit
    
    •	Exits the CLI interface.
