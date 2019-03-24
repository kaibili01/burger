# burger
**Eat Da Burger App**

>burger logger with MySQL, Node, Express, Handlebars and a homemade ORM (yum!).
>Whenever a user submits a burger's name, your app will display the burger on the left side of the page -- waiting to be devoured.

>Each burger in the waiting area also has a Devour it! button. When the user clicks it, the burger will move to the right side of the page.

>Your app will store every burger in a database, whether devoured or not.

**Instructions:** 
App Setup

1. Create a GitHub repo called burger and clone it to your computer.

2. Make a package.json file by running npm init from the command line.

3. Install the Express npm package: npm install express --save.

4. Create a server.js file.

5. Install the Handlebars npm package: npm install express-handlebars --save.

6. Install the method-override npm package: npm install method-override --save.

7. Install the body-parser npm package: npm install body-parser --save.

8. Install MySQL npm package: npm install mysql --save.

9.  Require the following npm packages inside of the server.js file:

**express**
**method-override**
**body-parser**

**DB Setup:**
Inside your burger directory, create a folder named db.

**In the db folder, create a file named schema.sql. Write SQL queries this file that do the following:**

1. Create the burgers_db.
2. Switch to or use the burgers_db.
3. Create a burgers table with these fields:
4. id: an auto incrementing int that serves as the primary key.
5. burger_name: a string.
6. devoured: a boolean.
7. date: a TIMESTAMP.
8. Still in the db folder, create a seeds.sql file. In this file, write insert queries to populate the burgers table with at least three entries.
9. Run the schema.sql and seeds.sql files into the mysql server from the command line
10. Now you're going to run these SQL files.
11. Make sure you're in the db folder of your app.
12. Start MySQL command line tool and login: mysql -u root -p.
13. With the mysql> command line tool running, enter the command source schema.sql. This will run your schema file and all of the queries in it -- in other words, you'll be creating your database.
14. Now insert the entries you defined in seeds.sql by running the file: source seeds.sql.
15. Close out of the MySQL command line tool: exit.

**Config Setup:**
1. Inside your burger directory, create a folder named config.
2. Create a connection.js file inside config directory.
3. Inside the connection.js file, setup the code to connect Node to MySQL.
4. Export the connection.
5. Create an orm.js file inside config directory.
6. Import (require) connection.js into orm.js

**In the orm.js file, create the methods that will execute the necessary MySQL commands in the controllers. These are the methods you will need to use in order to retrieve and store data in your database.**

1. selectAll()
2. insertOne()
3. updateOne()
4. Export the ORM object in module.exports.

**Model setup:**

1. Inside your burger directory, create a folder named models.

2. In models, make a burger.js file.

3. Inside burger.js, import orm.js into burger.js

4. Also inside burger.js, create the code that will call the ORM functions using burger specific input for the ORM.

5. Export at the end of the burger.js file.

**Controller setup:**

1. Inside your burger directory, create a folder named controllers.

2. In controllers, create the burgers_controller.js file.

3. Inside the burgers_controller.js file, import the following:

Express
burger.js
Create the router for the app, and export the router at the end of your file.

**View setup:**

1. Inside your burger directory, create a folder named views.

2. Create the index.handlebars file inside views directory.

3. Create the layouts directory inside views directory.

4. Create the main.handlebars file inside layouts directory.

5. Setup the main.handlebars file so it's able to be used by Handlebars.

6. Setup the index.handlebars to have the template that Handlebars can render onto.

7. Create a button in index.handlebars that will submit the user input into the database.

**Directory structure:**

All the recommended files and directories from the steps above should look like the following structure:


```.
├── config
│   ├── connection.js
│   └── orm.js
│ 
├── controllers
│   └── burgers_controller.js
│
├── db
│   ├── schema.sql
│   └── seeds.sql
│
├── models
│   └── burger.js
│ 
├── node_modules
│ 
├── package.json
│
├── public
│   ├── assets
│   │   ├── css
│   │   │   └── burger_style.css
│   │   └── img
│   │       └── burger.png
│   └── test.html
│
├── server.js
│
└── views
    ├── index.handlebars
    └── layouts
        └── main.handlebars.
