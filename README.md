# Gym Membership SQL Database

> I designed and implemented this database to learn how to use MySQL and practise running queries. 

## Mock Scenario
A gym which specialises in boxing classes and training requires a database to store their membership, trainer, equipment, merchandise, drinks and item/equipment rental information. 
<p>

## Files Used
All files can be found in this branch: `sql-gym-membership`.
- [boxing_gym.sql](schema/boxing_gym.sql)
Use this file in mySQL to create and populare the database. Dummy data is included in this file.
- [queries_for_db.sql](queries/queries_for_db.sql)
  - This file contains the sample of queries used to return results from the database, Each command is commented with explanations.
- [boxing_gym_diagram.sql](docs/boxing_gym_diagram.png)
  - This diagram shows the structure of the database and entity relationships. 
- [Query screenshots](docs/query-screenshots)  
  - This file can be found in "docs" and contains the results of the queries when run in MySQL.
  
## Database Structure
This database stores information for the fboxing gym, including:

- **Membership Types** – Standard, Premium, etc.  
- **Members** – Member information and membership details  
- **Trainers** – Trainer information and certifications  
- **Classes** – Scheduled classes and assigned trainers  
- **Bookings** – Member bookings for classes  
- **Payments** – Tracking membership and purchase payments  
- **Equipment** – Gym equipment and rental info  
- **Merchandise** – Items for sale  
- **Drinks** – Drinks available for purchase  
- **Rentals** – Equipment rentals  
- **Purchases** – Merch and drink purchases  

Some entities like Purchases weren't actively used, but were kept in the database as maybe useful for data analysis (i.e. trend analysis).

## Scenarios & Queries

[queries_for_db.sql](queries/queries_for_db.sql) file contains all commands used for these exercises.
Commands are commented out for guidance. [Screenshots](docs/query-screenshots.png) show expected results.

Sample scenarios to run:

1. Find members with expired memberships as of 20/02/2025 and extend by one month.  
2. List evening classes, ordered by day of the week.  
3. Count total water bottles in inventory.  
4. Find membership details for Jamie Anderson.  
5. List classes each trainer teaches and when.  
6. Count trainers with Level 2 certification.  
7. List membership types for all members.  
8. Add new trainer Tom Azure and his specialism Kickboxing.

## What I Learned
- After creating the database and running the commands, I recognised the importance of normalisation. 
    - Entities like Drinks could have been split further by type and category.
- I improved my SQL skills (SELECT and UPDATE statements) whilst practising queries.
