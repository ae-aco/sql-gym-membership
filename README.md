# Gym Membership SQL Database

> I designed and implemented this database to learn how to use MySQL and practise running queries. 

## Mock Scenario
I have created a mock scenario for this project.
A gym which specialises in boxing classes and training requires a database to store their membership, trainer, equipment, merchandise, drinks and item/equipment rental information. 
<p>

## Files used
All files can be found in their folders in this branch: "sql-gym-membership".
- *boxing_gym.sql*
  - This file can be found in "schema".
  - Use this file in mySQL to create and use the database. The member, trainer, membership type, classes etc. data is already in this file.
- *queries_for_db.sql*
  - This file can be found in "queries"
  - This file contains the sample of queries I used to return results in my database, I used these queries to practice using SQL. The scenarios and questions for these queries are also included in this README file.
- *boxing_gym_diagram.sql*
  - This file can be found in "docs"
  - This diagram shows the structure of the database and how each entity relate to each other. 
- *query screenshots*  
  - This file can be found in "docs" and contains the results of the queries when run in MySQL.
  
## Database Structure
I have stored the following data:
- membership types
- members
- trainers
- classes
- bookings
- payments
- equipment
- merchandise
- drinks
- rentals
- purchases*

You can also see this reflected in the diagram. 
*I didn't use this entity, however, I kept it in the database as I thought it was useful for data analysis (i.e. trend analysis).

## Scenarios & Queries

*queries_for_db.sql* file is required because the queries and commands used to answer each query can be found in the file. 
The entire file is commented out because I have included brief explanations about what each command does.<br>
If you wish to run the commands, then you can copy and paste the commands into a new SQL tab, run the queries as though you're answering each question. I have added screenshots of the data you should see.<br>

1. Who are the members with expired memberships as of 20th February 2025? Update their membership by extending it for one month.
2. Which classes take place in the evening? Order this data by day of the week.
3. What is the total number of water bottles kept in the inventory?
4. A member - Jamie Anderson has walked in, they can't remember what type of membership they have. Find their record and membership type.
5. What classes do the trainers teach and when?
6. How many trainers hold a level 2 certification?
7. What type of membership do the members have?
8. A new trainer has joined the gym - Tom Azure. Add Tom and the new specialism he teaches - Kickboxing.

## What I Learned
After creating the database and running the commands, I realised there was a lot more potential for further normalisation.
For example, the "Drinks" entity could have been broken down further by type (still, sparkling) and category (vegan, non-vegan).
I'll take this into account for future projects! :)
