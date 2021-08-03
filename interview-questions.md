# ASSESSMENT 4: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.  

1. What is an instance variable in Ruby? How is it different from other variables?

  Your answer: An instance variable in Ruby is a variable that is associated with an object and starts with the @ symbol. These variables can be assigned a value or be left to be changed by an argument. Instance variables are what getters and setters manipulate and access.

  Researched answer: Instanced variables in Ruby have names starting with the @ symbol and are restricted to whatever the object itself refers to. Seperate objects can have different values for their instance variables. The variables have a nil value before initialization, and are private by default. These variables do not need a declaration and can only be accessed by instace methods.



2. What is a block in Ruby?

  Your answer: Blocks in Ruby is code that is enclosed in a do end statement or curly braces; {}. Blocks are functions that can take arguments inside of two pipes. 

  Researched answer: A block consists of chunks of code that is always enclosed in braces. Blocks are invoked from a function with the same name as the block. Blocks can be invoked by using the yield statement. Yield statements can also be used to pass parameters to block code. Blocks in Ruby can also be declared to be run as the file is being loaded and after the program has finished executing with the "begin" and "end" blocks.



3. Ruby has an implicit return. What does that mean?

  Your answer: In Ruby an implicit return is where inside of functions we do not have to explicitly write return. The return is implied as the last part of the code block. 

  Researched answer: In Ruby with implicit return, the value of the last line of a method is automatically returned without using the keyword return. Ruby's methods will return the result of the last evaluated expression. For example, a ruby method that "return a + b" can be simply written as "a + b " in the code block without the return keyword and will return the sum of a + b just the same.



4. What is object-oriented programming? How is it different than functional programming?

  Your answer: Object-oriented programming is the style of programming that focuses on classes and objects. OOP is about using blueprints/classes to make different types of objects, methods, etc to create a program. Functional programming is where the focus is on applying and creating functions. 

  Researched answer: The four principles of object-oriented programming are encapsulation, abstraction, inheritance, and polymorphism. Encapsulation is when each object keeps its state private inside of a class, meaning where other objects don't have direct access to this state unless explicitly allowed. Abstraction is like an extension of encapsulation where the idea is to only reveal operations relevant for other objects, and hiding internal implementation details. An example would be having public methods that any class can call without "knowing" how they work, a lot like how we use our cell phones but have no idea how they work under the hood. Inheritance is a way to reuse common logic and extract unique logic into seperate classes. A child class can be derived from a parent class, by doing so the child class "inherits" all of the properties and methods of the parent class and can also have it's own unique values. Polymorphism is where child classes can implment their own versions of the a parent classes methods. 
    Functional programming is the process of building software by composing pure functions, avoiding shared states and mutable data, it is delcarative rather than imperative. Compared to OOP it is more concise, predictable, and easier to test. A big part of functional programming are higher order functions that take functions as a parameter or returns a function.



5. What is the difference between a class and an object?

  Your answer: The difference between a class and an object is that a class is the blueprint to the object(s). The class is the general outline that we can draw from to create unique individual classes. A class can detail what the possible attributes will be but the formed object is what will actually contain the specific details, like a height value, an actual color value, etc.

  Researched answer: A class is a template for objects, it defines object properties, valid ranges of values, default value, and describes object behavior. An object is a member or instance of a class. Objects have a state in which all of its properties have values that are explicity defined or defined by default settings.  



6. STRETCH: What is `attr_accessor`?

  Your answer: "attr_accessor" replaces  traditional setters and getters in Ruby. Using  attr_accessor before you initialize, makes the code a little more stream line to where later on you can set/change a value without a setter, and access values without a getter. There is also attr_writer, and attr_reader which function just like a setter and getter method. 

  Researched answer: Attr_accessor creates getter and setter methods for you. Getter methods retrive the value of the attribute, and setter methods are used to set the value to the attribute. Attr_accessor are useful when you want to show vertain attributes but do not want to store its value in the database. 



## Looking Ahead: Terms for Next Week

1. PostgreSQL: PostgreSQL or Postgres is a type of SQL; structured query language which is a domain-specific language used for communicating with relational databases. Postgres is an open source object-relational database management system meaning it looks at databases using OOP.
 
2. Ruby on Rails: A server-side web application framework written in Ruby, released in July 2004 as open source code. Rails is a MVC framework that provides default structures for databases, web services, and web pages.

3. CRUD: CRUD stands for create, read, update, and delete. These are the four basic functions that models should be able to do in regards to api models. 

4. ORM: Object relational mapping is a programming technique for converting data between incompatible system using OOP languages. With ORM developers can write SQL queries using Rails.

5. Active Record: Active Record is a Rails ORM that takes data stored in a database table and lets you interact with it like a Ruby object.
