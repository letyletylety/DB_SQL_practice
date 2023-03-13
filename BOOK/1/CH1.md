# 1. The Relational Database

## What Is a Database

**an organized collection of data** used for the purpose of modeling some type of organization or **organizational** process.

### 2 type of database management

- operational databases
  - oltp (online transaction processing)
  - where a need exists to collect, modify, and maintain data **on a daily basis.**
  - type of data : dynamic ( changes constantly and always reflects up-to-the-minute )
- analytical databases
  - olap (online analytical processing)
  - track historical and **time-dependent** data.
  - trend, statistical, long period
  - type of data : static (never (or very rarely) modified)

## The Relational Database

A relational database stores data in *relations* (= *tables*)
Each relation is composed of tuples, or *records*, and attributes, or *fields*.

The relational model categorizes relationships as one-to-one, one-to-many, and many-to-many.

## Retrieving Data

SQL

## Advantages of a Relational Database

- Built-in multilevel integrity
    - ensure the accuracy of the data
- Logical and physical data independence from database applications
- Guaranteed data consistency and accuracy:
- Easy data retrieval

disadvantage
- ran very slowly

## Relational Database Management Systems

Relational Database Management Systems
is a software application program you use to create, maintain, modify, and manipulate a relational database.

## What's next?

## Review Questions

1. Name the two main types of databases in use today.
    The two main types of databases in use today are operational and analytical.
2. What type of data does an analytical database store?
    static data
3. True or False: An operational database is used primarily in online transaction processing (OLTP) scenarios.
    TRUE
4. Name one of the branches of mathematics on which the relational model is based.
    set theory and first-order predicate logic.
5. How does a relational database store data?
    A relational database stores data in relations, which the user perceives as tables.
6. Name the three types of relationships in a relational database.
    1-1, 1-many, many-many
7. How do you retrieve data in a relational database?
    by using SQL
8. State two advantages of a relational database.
    Built-in multilevel integrity
    Logical and physical data independence from database applications
    Guaranteed data consistency and accuracy
    Easy data retrieval
9. What is a relational database management system?
    A relational database management system, or RDBMS, is a software program you use to create, maintain, modify, and manipulate a relational database.
10. True or False: Mobile devices are limited to gigabytes of storage.
    false, can be terabytes
11. State why database software companies have had a hard time implementing the relational database.
    processing speed, memory, and storage were simply insufficient to provide database software vendors with a platform on which to build a full implementation.