
from flask import *
import pymysql
app =Flask(__name__)

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





if __name__ == "__main__":
    app.run(debug=True)
