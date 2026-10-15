
# Vacuum Cleaner Problem

def vacuum_cleaner(location, rooms):
    print("Initial Room Status:", rooms)
    print("Vacuum Cleaner starts at:", location)

    while "Dirty" in rooms.values():
        if rooms[location] == "Dirty":
            print("Room", location, "is Dirty. Cleaning...")
            rooms[location] = "Clean"
            print("Room", location, "is now Clean.")

        else:
            print("Room", location, "is already Clean.")

        if location == "A":
            location = "B"
            print("Moving to Room B")
        else:
            location = "A"
            print("Moving to Room A")

    print("\nAll rooms are Clean!")
    print("Final Room Status:", rooms)


# Initial conditions
rooms = {"A": "Dirty", "B": "Dirty"}
location = "A"

# Run the vacuum cleaner
vacuum_cleaner(location, rooms)
