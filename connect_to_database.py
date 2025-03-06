import mysql.connector
from mysql.connector import Error

def connect_to_database():
    """
    Establishes a connection to the MySQL database.

    Returns:
        connection: A MySQL database connection object.
    """
    try:
        # Establish the connection to the database
        connection = mysql.connector.connect(
            host='localhost',  # Database host (e.g., localhost or an IP address)
            database='pms',  # Database name
            user='root',  # Your MySQL username
            password=''  # Your MySQL password
        )

        if connection.is_connected():
            print("Successfully connected to the database.")
            return connection
        else:
            print("Failed to connect to the database.")
            return None

    except Error as e:
        print(f"Error: {e}")
        return None
