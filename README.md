# Taxi Service
The Taxi Service is a simple web application that support registration, authentication and other CRUD operation;

# Features
- registration;
- authentication;
- add and delete car models;
- add and delete cars;
- add and delete manufacturer;
- add drivers to specific cars;
- view all cars belonging to the current driver;
- view all cars;
- view all manufacturers;
- view all drivers.

# Getting Started
1) Clone the project repository to your local machine, path to your project must contain only english letters. Also, it mustn't contain spaces. **In other case Injector won't work correctly**.
2) Install **MySQL and Workbench** (if you have experience with other DBMS - you can use them, but SQL script wrote for MySQL).
3) Run the SQL script located in **src/main/resources/init_db.sql** to initialize the database.
4) Replace the values of the **URL, USERNAME, PASSWORD and JDBC_DRIVER** properties with the appropriate values for your database setup.
5) Build the project using Maven: **mvn clean install**.
6) Better **install Tomcat 9.0.50**. If you decide to install version 10 and above, you should use a different dependency for servlets and JSTL as well.
7) Deploy the generated WAR file to servlet container such as Tomcat, add deployment '**simple-taxi-service:war exploded**'.

# Structure
1) controllers - Servlets that handle HTTP requests and responses 
  (controller name - url - function) :
    * LoginController - "/login" - authentication.
    * LogoutController - "/logout" - invalidate current session.
    * IndexController -  "/" - show all corresponding pages.
    * AddCarController -  "/cars/add" - adds a new car.
    * AddDriverToCarController - "/cars/drivers/add" - adds a driver to a certain car.
    * DeleteCarController -  "/cars/delete" - deletes car.
    * GetAllCarsController - "/cars" - views all cars.
    * AddDriverController - "/drivers/add" - adds a driver.
    * DeleteDriverController - "/drivers/delete" - deletes driver.
    * GetAllDriversController - "/drivers" - views all drivers.
    * GetMyCurrentCarsController - "/drivers/cars" - views all cars for the current driver.
    * AddManufacturersController - "/manufacturers/add" - adds new manufacturer.
    * DeleteManufacturerController - "/manufacturers/delete" - deletes manufacturer.
    * GetAllManufacturersController - "GET /manufacturers" - views all manufacturers.
2) dao: Data Access Object interfaces and their implementations, here realized access to database using sql query :
    * CarDaoImpl - implements crud operations, for work with car.
    * DriverDaoImpl - implements crud operations, for work with Driver.
    * ManufacturerDaoImpl - implements crud operations, for work with manufacturer.
3) exception: custom exception
    * AuthenticationException - throws when user add invalid login or password.
    * DataProcessingException - throws in DAO layer, if we can't use some of CRUD operations.
4) lib: Here we have annotations and class which help us to create an instance of class
    * @Dao - annotation for dao implementation.
    * @Service - annotation for service implementation.
    * @Inject - annotation for field which need to initialize and have new instance.
    * Injector - here implements an injector to initialize and return instances.
5) model: classes that represent data from db
6) service: Service interfaces and their implementations that perform business logic
    * AuthenticationService - logic for authenticate our user, when he want use our webapp.
    * CarService, DriverService, ManufacturerService - process data in accordance with business logic.
7) util: Utility class used in a project to create a database connection
8) filter: Servlet Filters used to intercept requests and responses
9) resources: Non-Java files such as database scripts and configuration files
10) webapp: Contains web resources such as CSS, and JSP files, configuration file - web.xml
11) views: Contains JSP files used as views in the application for cars, drivers, manufacturers, authentication and include css files (that contains CSS files used in the application)

# Used technologies:
* Java v.17.0.5.
* Maven v.3.8.6.
* JDBC v.4.2.
* MySql v.8.0.24.
* Java Servlets v.4.0.1.
* Tomcat v.9.0.50.

# Authors
Viacheslav Kyslyi
