# 2. Design Objectives

## Why Should You Be Concerned with Database Design?

it’s better for you to use these tools after **you’ve created the logical database structure.**
crucial to the **consistency, integrity, and accuracy** of the data in a database.

## The Importance of Theory

Theory = general propositions used as principles
The chief advantage of theory is that it helps you **predict outcomes**

*set theory*
*first-order predicate logic*

## The Advantage of Learning a Good Design Methodology

- It gives you the skills you need to design a sound database structure
- an organized set of techniques
- keep your missteps and design reiterations to a minimum
- easier and reduces the amount of time you spend designing the database.
- understand and use your RDBMS application program more fully and effectively

## Objectives of Good Design

- both required and ad hoc information retrieval
- The tables are constructed properly and efficiently
- Data integrity is imposed at the field, table, and relationship levels
- The database supports business rules relevant to the organization.S
- The database lends itself to future growth.

## Benefits of Good Design

- The database structure is easy to modify and maintain.
- The data is easy to modify.
- Information is easy to retrieve.
- End-user applications are easy to develop and build.

## Database-Design Methods

### Traditional Design Methods

3 phases : requirements analysis, data modeling, and normalization.

data-modeling phase
ER modeling

Normalization
decomposing large tables into smaller ones in order to eliminate redundant data and duplicate data and avoid problems with inserting, updating, or deleting data.

## The Design Method Presented in This Book

straightforward 
3NF : A table should have a field that uniquely identifies each of its records, and each field in the table should describe the subject that the table represents.

## Normalization

## Review

1. When is the best time to use an RDBMS program’s design tools?
    after you design the logical structure of the database.
2. True or False: Design is crucial to the consistency, integrity, and accuracy of data.
    True
3. What is the most detrimental result of improper database design?
    inaccurate information.
4. What fact makes the relational database structurally sound and able to guarantee accurate information?
    The fact that the relational database model is based on set theory and first-order predicate logic makes the relational database structurally sound and able to guarantee accurate information.
5. State two advantages of learning a design methodology.
    - It gives you the skills you need to design a sound database structure.
    - It provides you with an organized set of techniques that will guide you step by step through the design process.
    - It helps you keep your missteps and design reiterations to a minimum.
    - It makes the design process easier and reduces the amount of time you spend designing the database.
    - It will help you understand and use your RDBMS software more fully and effectively.
6. True or False: You will use your RDBMS program more effectively if you understand database design.
    True. Understanding database design will help you use your RDBMS program more efficiently and effectively.
7. State two objectives of good design.
    - The database supports required and ad hoc information retrieval.
    - The tables are constructed properly and efficiently.
    - Data integrity is imposed at the field, table, and relationship levels.
    - The database supports business rules relevant to the organization.
    - The database lends itself to future growth.
8. What helps to guarantee that data structures and their values are valid and accurate at all times?
    - Data integrity helps to guarantee that data structures and their values are valid and accurate at all times.
9. State two benefits of applying good design techniques.
    - The database structure is easy to modify and maintain.
    - The data is easy to modify.
    - Information is easy to retrieve.
    - End-user applications are easy to develop and build.
10. True or False: You can take shortcuts through some of the design processes and still arrive at a good, sound design.
    False. You cannot take shortcuts through some of the design processes and still arrive at a good, sound design.