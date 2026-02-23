
from flask import *
import pymysql
import os
app =Flask(__name__)
app.config["UPLOAD_FOLDER"] = "static/images"

@app.route("/api/signup", methods=["POST"])
def signup():
    username = request.form["username"]
    email = request.form["email"]
    phone = request.form["phone"]
    password = request.form["password"]
    print(username,email,phone,password)
    # create connection to db
    connection = pymysql.connect(host="localhost", user="root", password="", database="javanson_sokogarden")
    # create cursor to handle sql queries
    cursor = connection.cursor()

    # create the sql query
    sql = "insert into users (username,email,phone,password) values(%s,%s,%s,%s)"

    # data to be save
    data = (username,email,phone,password)
    print(data)

    # execute the sql table
    cursor.execute(sql,data)

    # save the data
    connection.commit()

    # return the response
    return jsonify({"message": "sign up successful"})

# login route
@app.route("/api/login", methods=["POST"])
def login():
    email = request.form["email"]
    password = request.form["password"]
    print(email,password)

    # create connection to db
    connection=pymysql.connect(host="localhost", user="root", password="", database="javanson_sokogarden")

    # create cursor to handle sql queries
    cursor = connection.cursor(pymysql.cursors.DictCursor)

    # create the sql query
    sql = "select user_id, username, email, phone from users where email=%s and password=%s"

    # data to execute the sql query
    data = (email,password)

    # execute the sql query 
    cursor.execute(sql,data)

    # check resulting rows
    if cursor.rowcount == 0:
        return jsonify({"message": "invalid credentials"})
    else:
    # get the user data
        user = cursor.fetchone()
        return jsonify({"message": "login successful", "user": user})
    
# products route
@app.route("/api/add_product", methods=["POST"])
def add_product():
    product_name= request.form["product_name"]
    product_description = request.form["product_description"]
    product_category = request.form["product_category"]
    product_cost = request.form["product_cost"]
    product_image = request.files["product_image"]
    print(product_name, product_description, product_category, product_cost, product_image)

    # get image name
    image_name = product_image.filename
    # save the image to folder
    file_path = os.path.join(app.config["UPLOAD_FOLDER"], image_name)
    product_image.save(file_path)
    
    # create connection to db
    connection = pymysql.connect(host="localhost", user="root", password="", database="javanson_sokogarden")
    # create cursor to handle sql queries
    cursor = connection.cursor()

    # create the sql query
    sql = "insert into product_details(product_name, product_description, product_category, product_cost, product_image) values(%s,%s,%s,%s,%s)"

    # data to be save
    data = (product_name,product_description,product_category,product_cost,product_image)
    print(data)

    # execute the sql table
    cursor.execute(sql,data)

    # save the data
    connection.commit()
    
     # return the response
    return jsonify({"message": "product added successfully"})

@app.route("/api/get_products", methods=["GET"])
def getProducts():
    # create connection to db
    connection = pymysql.connect(host="localhost", user="root", password="", database="javanson_sokogarden")
    # create cursor to handle the sql queries
    cursor = connection.cursor(pymysql.cursors.DictCursor)
    # create the sql query
    sql = "select * from product_details"
    # execute the sql query
    cursor.execute(sql)
    # get the resulting rows
    if cursor.rowcount == 0:
        return jsonify({"message": "no products found"})
    else:
        products= cursor.fetchall()
        return jsonify(products)
   






if __name__ == "__main__":
    app.run(debug=True)
