import psycopg2
import sys

def main_menu():
    print("Select an option:")
    print("1: List All Vehicles")
    print("2: Show Vehicle Instances")
    print("3: Add New Vehicle")
    print("4: Update Vehicle Condition")
    print("5: Delete Vehicle Instance")
    print("6: List All Sales")
    print("7: Add New Sale")
    print("8: Total Sales Report")
    print("9: Show Vehicle by VIN")
    print("10: Add Seller")
    print("11: Exit")

def list_all_vehicles(cur):
    cur.execute("SELECT * FROM Vehicle;")
    vehicles = cur.fetchall()
    for vehicle in vehicles:
        print(vehicle)

def show_vehicle_instances(cur):
    cur.execute("SELECT * FROM Vehicle_Instance;")
    instances = cur.fetchall()
    for instance in instances:
        print(instance)

def add_new_vehicle(cur):
    make = input("Enter make: ")
    model = input("Enter model: ")
    trim = input("Enter trim: ")
    cur.execute("INSERT INTO Vehicle (make, model, trim) VALUES (%s, %s, %s);", (make, model, trim))
    print("Vehicle added successfully.")

def update_vehicle_condition(cur):
    vin = input("Enter VIN: ")
    condition = input("Enter new condition: ")
    cur.execute("UPDATE Vehicle_Instance SET condition = %s WHERE vin = %s;", (condition, vin))
    print("Vehicle condition updated.")

def delete_vehicle_instance(cur):
    vin = input("Enter VIN: ")
    cur.execute("DELETE FROM Vehicle_Instance WHERE vin = %s;", (vin,))
    print("Vehicle instance deleted.")

def list_all_sales(cur):
    cur.execute("SELECT * FROM Sale;")
    sales = cur.fetchall()
    for sale in sales:
        print(sale)

def add_new_sale(cur):
    vin = input("Enter VIN: ")
    seller = input("Enter seller name: ")
    price = int(input("Enter selling price: "))
    date = input("Enter sale date (YYYY-MM-DD): ")
    cur.execute("INSERT INTO Sale (vin, seller, selling_price, sale_date) VALUES (%s, %s, %s, %s);", 
                (vin, seller, price, date))
    print("Sale added successfully.")

def total_sales_report(cur):
    cur.execute("SELECT SUM(selling_price) FROM Sale;")
    total = cur.fetchone()[0]
    print(f"Total sales amount: ${total}")

def show_vehicle_by_vin(cur):
    vin = input("Enter VIN: ")
    cur.execute("SELECT * FROM Vehicle_Instance WHERE vin = %s;", (vin,))
    instance = cur.fetchone()
    print(instance)

def add_seller(cur):
    seller = input("Enter seller name: ")
    cur.execute("INSERT INTO Seller (seller) VALUES (%s);", (seller,))
    print("Seller added successfully.")

def main():
    conn = psycopg2.connect("host=localhost dbname=Vehicle Sales user=your_user password=your_password")
    cur = conn.cursor()
    while True:
        main_menu()
        choice = input("Enter choice: ")
        if choice == "1":
            list_all_vehicles(cur)
        elif choice == "2":
            show_vehicle_instances(cur)
        elif choice == "3":
            add_new_vehicle(cur)
        elif choice == "4":
            update_vehicle_condition(cur)
        elif choice == "5":
            delete_vehicle_instance(cur)
        elif choice == "6":
            list_all_sales(cur)
        elif choice == "7":
            add_new_sale(cur)
        elif choice == "8":
            total_sales_report(cur)
        elif choice == "9":
            show_vehicle_by_vin(cur)
        elif choice == "10":
            add_seller(cur)
        elif choice == "11":
            print("Exiting...")
            break
        else:
            print("Invalid choice, please try again.")
        conn.commit()
    cur.close()
    conn.close()

if __name__ == "__main__":
    main()
