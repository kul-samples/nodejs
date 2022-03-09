## 2 Tier Sample application with frontend written in nodejs & and postrges is used as database
#### This application needs 4 Environment variables configrued on the server where it is running to conenct with the database on default port i.e. `5432`
1. DB_URL # Database URL
2. DB_USER # Database User
3. DB_PWD # Database password
4. DB_NAME # Database Name

#### Database should have a table with the `nodejs_demo` & table with the name `employee` should exists in database
#### Database script to create the table
```
create table if not exists employee(
id SERIAL,
name varchar(50),
job varchar(40),
department varchar(40),
salary int,
hire_date date,
PRIMARY KEY (id));
```
