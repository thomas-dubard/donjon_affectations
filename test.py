import pymysql

# Connect to the database
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='',
    database='affectations'
)

cursor = connection.cursor()

query = 'SELECT * FROM formation_salles'
cursor.execute(query)

results = cursor.fetchall()
for row in results:
    # Process each row of the result
    print(row)

cursor.close()
connection.close()