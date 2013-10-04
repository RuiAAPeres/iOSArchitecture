iOSArchitecture
===============

Sample project showing a common architecture I use when creating iOS Projects.

The project itself is quite simple:

* Getting Yahoo's Sports feed from their XML RSS.
* Parsing it
* Returning the results to the `UIViewController`, where then they can be showed.

There are many ways of doing it, although I think mine has some advantages.

Requirements
============

You will need [cocoapods](http://cocoapods.org/) in order to build this project 

------------------------------------
Goals of this Project
====================================

One of the main issues across the iOS development ecosystem is the lack of a well stablished architecture, from small to big applications.  
There is also a huge gap of Repositories/Projects/Samples that show what an app should look like, from a architectural point of view. 

You can see that when:

* You have Logic mixed with UI.
* You cannot see the boundaries between the Controller and the Model (MVC)
* Your `UIViewControllers` surpass 300 lines (From my experience when a `UIViewController` passes that frontier, normally something could be done better)
* It's not clear for you where things are and how to use them.

Each project has it's own demons, so what I want with this sample project, is a way for iOS developers to have a reference for what they should **always** try to achieve:

* Strive for small, simple, clean, **understandable** and maintainable classes.
* Respect the Single Responsibility Principle.
* Respect the DRY Principle.
* Respect the 4 OOP principles: Encapsulation, Abstraction, Inheritance, Polymorphism.
* **Create methods that do one thing and one thing only** (this is specially useful for Unit Testing).
* Create meaningful names for your methods, classes, variables, properties. **This is one of the most underestimated part of coding.**

------------------------------------
How to use this Project
====================================

Well, this is up to you. Start by adding some breakpoints and keep pushing until you understand what's going on. If you find it's a bit difficult to use/understand it, send me an email, or open an issue, and I will try to assist the best I can. 
If you happen to use this architecture in one of your apps, just flag it for me. :) 

------------------------------------
Suggestions
====================================

I am more than happy to change the current structure of this project, based on people's suggestions. **The goal here is to improve the way we code**.
So please, if you think that something is fundamentaly wrong, or that could be improved, open an issue, or create a pull request.

-------
License
=======

This code is distributed under the terms and conditions of the MIT license. 
