while True:
    print ("Enter the number corresponding to the conversion you want to perform:")
    print("1. Feet to Inches")
    print("2. Inches to Feet")
    print("3. Feet to Meters")
    print("4. Meters to Feet")
    choice = int(input())

    if choice == 1:
        feet = float(input("Enter the number of feet: "))
        inches = feet * 12
        print(feet, "feet is equal to", inches, "inches.")
    elif choice == 2:
        inches = float(input("Enter the number of inches: "))
        feet = inches / 12
        print(inches, "inches is equal to", feet, "feet.")
    elif choice == 3:
        feet = float(input("Enter the number of feet: "))
        meters = feet / 3.281
        print(feet, "feet is equal to", meters, "meters.")
    elif choice == 4:
        meters = float(input("Enter the number of meters: "))
        feet = meters * 3.281
        print(meters, "meters is equal to", feet, "feet.")
    else:
        print("Invalid input. Please enter a valid number.")
    
    repeat = input("Do you want to perform another conversion? (y/n) ")
    if repeat == 'n':
        break
