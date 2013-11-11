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
* Respect the [SOLID principles](http://www.codeproject.com/Articles/60845/The-S-O-L-I-D-Object-Oriented-Programming-OOP-Prin).
* Respect the DRY Principle.
* Respect the 4 OOP principles: Encapsulation, Abstraction, Inheritance, Polymorphism.
* **Create methods that do one thing and one thing only** (this is specially useful for Unit Testing).
* Create meaningful names for your methods, classes, variables, properties. **This is one of the most underestimated part of coding.**

------------------------------------
How to use this Project
====================================

Start by adding some breakpoints and keep pushing until you understand what's going on. If you find it's a bit difficult to use/understand it, send me a [tweet](https://twitter.com/XSody), or open an issue, and I will try to assist the best I can. 
If you happen to use this architecture in one of your apps, just flag it for me. :) 

------------------------------------
Suggestions
====================================

I am more than happy to change the current structure of this project, based on people's suggestions. **The goal here is to improve the way we code**.
So please, if you think that something is fundamentaly wrong, or that could be improved, open an issue, create a pull request or [just let me know](https://twitter.com/XSody).

------------------------------------
Versions
====================================

**1.2**

An object of type `id <RPSportsBoundaryProtocol>` can now the be injected into the `RPSportsFeedViewController` (you can see this as he complies to the `RPDataSourceManagerInjection` protocol). By default it will be used `RPDataSourceManager`. This is specially useful for Unit Testing, as you can inject a mock one. I also added an example of how to do it on the test suite (check the `RPSportsFeedViewControllerTesting.m` and `RPMockDataSourceManager`). The `RPSportsBoundaryProtocol` is now expecting an object (as the method `-(void)yahooSportsFeedWithCompletion:(RPYahooSportsCompletionBlock)completionBlock` is an instance one)
) versus a class, **although I am still weighting the pros and cons**.

**1.1**

The access to the Model, by the `UIViewControllers`, are now made by a Interactor object. Instead of returning a reference to the `RPDataSourceManager` Class (since we are using class methods), we return an abstract Class that conforms to a given protocol. You can see this see this strategy applied [here](http://www.confreaks.com/videos/759-rubymidwest2011-keynote-architecture-the-lost-years#!), the video is present by [Robert Martin](http://en.wikipedia.org/wiki/Robert_Cecil_Martin) aka Uncle Bob. 

-------
License
=======

This code is distributed under the terms and conditions of the MIT license. 


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RuiAAPeres/iosarchitecture/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

