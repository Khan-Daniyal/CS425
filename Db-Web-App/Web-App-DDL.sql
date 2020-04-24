CREATE TABLE "Model" (
"modelNumber" serial,
"salePrice" int NOT NULL,
PRIMARY KEY ("modelNumber")
);

CREATE TABLE "Inventory" (
"inventoryID" serial,
"cost" int NOT NULL,
"leadTime" int NOT NULL,
"category" varchar (20) NOT NULL,
PRIMARY KEY ("inventoryID")
);

CREATE TABLE "Customer" (
"customerID" serial,
"firstName" varchar (20) NOT NULL,
"lastName" varchar (20) NOT NULL,
PRIMARY KEY ("customerID")
);

CREATE TABLE "Employees" (
"employeeID" serial,
"firstName" varchar (20) NOT NULL,
"lastName" varchar (20) NOT NULL,
"ssn" serial,
"salary" int NOT NULL,
"jobType" varchar (20) NOT NULL,
PRIMARY KEY ("employeeID")
);

CREATE TABLE "Order" (
"orderNumber" serial,
"customerID" serial,
"employeeID" serial,
"model" varchar (20) NOT NULL,
"saleValue" int NOT NULL,
PRIMARY KEY ("orderNumber")
);

CREATE TABLE "Sales" (
"salesReportID" serial,
PRIMARY KEY ("salesReportID")
);



CREATE TABLE "User" (
"userID" serial,
"privilege" varchar (20) NOT NULL,
"loginTime" time,
"logoutTime" time,
PRIMARY	KEY ("userID")
);

CREATE TABLE "HRUser" () INHERITS ("User");
CREATE TABLE "SalesUser" () INHERITS ("User");
CREATE TABLE "EngineeringUser" () INHERITS ("User");
CREATE TABLE "AdminUser" () INHERITS ("User");

CREATE TABLE "businessReports" (
"reportID" serial
);


ALTER TABLE "Customer" ADD FOREIGN KEY ("customerID") REFERENCES "Customer"("customerID");
ALTER TABLE "Employees" ADD FOREIGN KEY ("employeeID") REFERENCES "Employees"("employeeID");