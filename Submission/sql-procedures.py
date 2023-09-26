import mysql.connector

# Establish a connection to the MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user='admin',
    password='p@ssword',
    database='littlelemondb'
)
# Create a cursor object to execute SQL queries
cursor = conn.cursor()
def GetMaxQuantity(item_id):
    try:
        # Execute the SQL query to get the max quantity for the item
        cursor.execute("SELECT MAX(quantity) FROM littlelemondb.menuitems WHERE MenuItemsID = %s", (item_id,))

        # Fetch the result
        max_quantity = cursor.fetchone()[0]
        return max_quantity
    finally:
        # Close the cursor and connection
        cursor.close()
        conn.close()

def ManageBooking(table_no, date, customer_id):
    try:
        # Check if the table is already reserved for the given date
        cursor.execute("SELECT * FROM littlelemondb.bookings WHERE TableNumber = %s AND BookingDate = %s", (table_no, date))
        existing_booking = cursor.fetchone()

        if existing_booking:
            # The table is already reserved for the given date, reject the booking
            print("Table is already reserved for this date. Booking rejected.")
        else:
            # The table is available, insert the booking
            cursor.execute("INSERT INTO littlelemondb.bookings (BookingDate, TableNumber, CustomerID) VALUES (%s, %s, %s)",
                           (date, table_no, customer_id))
            conn.commit()
            print("Booking successful!")

    finally:
        cursor.close()
        conn.close()

def UpdateBooking(table_number, date):
    try:
        # Execute SQL to update booking information
        cursor.execute("UPDATE littlelemondb.bookings SET BookingDate = %s WHERE TableNumber = %s",
                       (date, table_number))

        # Commit the changes to the database
        conn.commit()

    finally:
        cursor.close()
        conn.close()

def AddBooking(booking_id, customer_id, table_no, date):
    try:
        # Execute SQL to insert a new booking
        cursor.execute("INSERT INTO littlelemondb.bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (%s, %s, %s, %s)",
                       (booking_id, customer_id, table_no, date))

        # Commit the changes to the database
        conn.commit()

    finally:
        cursor.close()
        conn.close()


def CancelBooking(booking_id):
    try:
        # Execute SQL to cancel the booking
        cursor.execute("DELETE FROM littlelemondb.bookings WHERE BookingID = %s", (booking_id,))

        # Commit the changes to the database
        conn.commit()

    finally:
        cursor.close()
        conn.close()
