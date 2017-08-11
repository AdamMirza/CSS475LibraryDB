# Team DropTable
## CSS 475 Group Project
Welcome to DropTable's Group Project for the Database Management course taught at the University of Washington. The idea of the project is to create a database system for a mini-world. The mini-world our team chose is a Library System.

Our team consists of:
* Adam Mirza
* Himakar Kadirimangalam
* Hien Nguyen
* Lisa Kim
* 

## Introduction
Our database project is to create a database that would be used for a public library. We are structuring this database to handle all types of media that a physical library would store. The goal of this project is to create a fully working back-end architecture that is extensible for library requests. 

## Tech
We used SQLite for our system on Mac OSX. The main program we used for building the database schema was [DB Browser for SQLite](http://sqlitebrowser.org/).

We also used an online service to share a working copy of our database on [SQLiteOnline](https://sqliteonline.com/#fiddle-598cf113ea0084psj673ik0z) (this link takes you to our DB).

## Using Our DB
There are a few key components to our file system to understand. The first is the ```LibraryDB.db``` file. This file can be uploaded directly to **DB Browser for SQLite** and you can run active queries on it.

The file `root\Create` contains all of the Create queries to make our database in SQL.

In the file `root\Create\CreateDB` is an executable query in the file titled `LibraryDB.sql` that will create a perfect DB using a SQL query.

In the file `root\Insert` are queries that will populate the database (we called it *dump* in the file) with initial data.

In the file `root\Tests` are queries where Inserts would not work due to our constraints.

# Thanks for stopping by!

Copyright © 2017, Team DropTable
University of Washington