# T2A2 - Marketplace Project :rocket:

![CodeMeetr Logo](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/CodeMeetr_logo.png?raw=true)

Personal Portfolio Assessment @ [Coder Academy](https://coderacademy.edu.au/)

![GitHub followers](https://img.shields.io/github/followers/alexleybourne?style=flat&logo=github) ![Twitter Follow](https://img.shields.io/twitter/follow/AlexLeybourne?&style=flat&logo=twitter&logoColor=white) ![Portfolio](https://img.shields.io/badge/Portfolio-AlexLeybourne.com%20-blue?style=flat&logo=google-chrome&logoColor=white&link=http://alexleybourne.com)



Visit the site: 
[CodeMeetr - Heroku](http://codemeetr.herokuapp.com/)

Source code: 
[Here](https://github.com/alexleybourne/CodeMeetr/tree/master/src)

___

## Installation and setup :gear:

If you would like to setup this Applicaiton on your personal machine these are the steps required.

<details>
	<summary>
		<b> Instructions </b>
	</summary>
	
-   fork and clone
-   bundle install
-   update  `config/database.yml`  with your postgresql username & password
-   update  `config/credentials.yml`  with your cloudinary api key. In order to decrypt the file to edit, type  `EDITOR='code --wait' rails credentials:edit`  into your command line.
-   `rails db:setup`  - setup the database
-   `rails db:schema:load`  - load the schema for the database
-   `rails db:seed`  - load the items into the database
-   `rails s`  to run the server

The default server is located at  [http://localhost:3000/](http://localhost:3000/)

</details>

___

## Application Purpose :memo:
CodeMeetr was inspired by recent events involving the popular events app "meetup.com". Meetup announced they will be charging event holders per user who clicks attending or possibly charging the attendees for their service. This inspired me to create an alternative that would focus on the coding and tech community. The number one spot for your hackathon events, callbacks and other goodies.  <br>

This upcoming problem needs to be solved to allow our tech community to continue to thrive and stay safe from the potential major disruption meetups changes could make. Also a coding specific service removes clutter and allows the service to be catered specifically to the communities needs as the audience is less wide and general.

The target audience for this application is primarily those interested in coding events and people who host them already. Anythign from hackahtons, meetups, info nights and more. This allows these users to go to one place and get some coding goodness without all the clutter. So The average user would be someone who would like to or regualry attends coding based events and a person who hosts them.

___
## Functionality and Features :zap:
CodeMeetr's main object is to allow code enthusiasts to easily find events that are being hosted around them that interest them. When the user visits the site they are immediately greeted with the top events coming up! 
The user can view the events in a brief overview and then click the event to see more. The events show a cover image, title, host, description, date and time as well as how many people are going and how many spaces are left. 
To click going to an event the user must create an account and sign in. Once you have made an account you are also able to create and manage events. 
Users can also easily search for events by typing in key words that may interest them. The previews also display which events are yours and which events you are already going to in a very intuitive and user friendly manner. 


___
## User Stories :notebook_with_decorative_cover:

- Users can view all events
	- The user does not have to be signed in to view all events
- Users can attend events
  - Only when the user is signed in
 - Users can create an event
   - Only when they are signed in   
   -  Users can also edit their own events
 - Users can create an account
	 - Users can change upload a profile photo
	 - Users can edit their details
 - Users can upload a photo to their event
 - Users can log in and out
 - Users can see which events they are attending
	 - They can also see which events they own
- Users can search for events
### Strech Goals:
- Users can upload many photos to their event
- Users can view events in calendar view
- Users can comment on events
- Users can like events


___
## Sitemap :telescope:

![Code Meetr Site Map](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/Site_map.png?raw=true)

---
##  Screenshots  :camera:

![Home Screen](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/screenshots/Logged-in-Screen.png?raw=true)

See all the Screenshots here:

- [Screenshots Folder](https://github.com/alexleybourne/CodeMeetr/tree/master/docs/screenshots)

---
##  Wireframes & Mockups :pencil2:

### Event Mockups:

![Mockups](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/mockups/CodeMeetr_Home_Desktop.png?raw=true)

<details>
	<summary>
		<b> All Mockups </b>
	</summary>

Event Desktop Mockup:
![Event desktop mockup](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/mockups/CodeMeetr_Event_Desktop.png?raw=true)

Event Mobile Mockup: 

![Event moblie mockup](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/mockups/CodeMeetr_Event_Mobile.png?raw=true)

Link to all mockup images:
[Mockups](https://github.com/alexleybourne/CodeMeetr/tree/master/docs/mockups)

</details>



<details>
	<summary>
		<b> Wireframes </b>
	</summary>
	
![Hand Drawn Wireframes](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/CodeMeetr_wireframe_sketches.png?raw=true)

Full image:
[Hand drawn wireframes](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/CodeMeetr_wireframe_sketches.png?raw=true)
</details>



___
## Feautres :gem:

<details>
	<summary>
		<b> MVP Feautres </b>
	</summary>
	
#### User Accounts
- CodeMeetr allows users to create accounts with secure passwords and upload a profile photo.

#### Authentication & Authorisation
- The public is able to view all events and search the site. However any further interaction requires the user to make an account. 

- User id's are checked against all events they interact with. This makes sure they can only edit their own events and the events they are going to can easily be tracked also.
#### Event CRUD
- The ability to create, read, update and delete events is a key part to CodeMeetr. 
 #### Event Search
- All events can easily be searched for by key words and potentially categories.
#### Image Upload
- Each event has a cover image that can easily be uploaded and updated. If the user chooses to not upload an image on creation a default image is used until they upload one at a later date. Each account also allows for Account profile pictures.
 
 #### Capacity and Promotion Values
- Each event has it's own values attaining to their capacity and if the event is promoted on the front page. Increased capacity results in the event owner paying a once off fee for that event. Promotions also are a one off fee to put the event on the front page of the website. The Higher Priority the higher it is on the page.

</details>

<details>
	<summary>
		<b> Extensible Feautres </b>
	</summary>
	
#### Event Photos
- Each event has a photos page for all photos to be uploaded and shared during / after the event.

#### Calendar View
- A Calendar view for the user to easily see all their events organised in a time based view.

#### Event Comments
- A Comments section on each event for updates, questions and more. Creating easy communication between users and event owners.

 #### Google Maps API
- Easily allow userss to find event locations with an event location prieview and quick google maps link to the event location.

#### Stripe Payments
- Each event has prices assosciated with the event based on Event Capacity and promotion value. 
 
</details>

___
## Tech stack :floppy_disk:
<details>
	<summary>
		<b> Ruby on Rails </b>
	</summary>
	
Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller framework, providing default structures for a database, a web service, and web pages
	
[Rails v- 5.2.3](https://guides.rubyonrails.org/v5.2/getting_started.html)

[Ruby v-2.6.3](https://ruby-doc.org/stdlib-2.6.3/)

</details>

<details>
	<summary>
		<b> PostgreSQL </b>
	</summary>
	
PostgreSQL is a free and open-source relational database management system emphasizing extensibility and technical standards compliance built on the SQL language. It is designed to handle a range of workloads, from single machines to data warehouses or Web services with many concurrent users.
	
[PostgreSQL](https://www.postgresql.org/docs/10/index.html)

</details>

<details>
	<summary>
		<b> HTML 5 </b>
	</summary>
	
HTML5 is a software solution stack that defines the properties and behaviors of web page content by implementing a markup based pattern to it. HTML5 is the fifth and current major version of HTML, and subsumes XHTML. HTML was used for our web front end.
	
[HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)
</details>

<details>
	<summary>
		<b> SCSS - Bootstrap & FontAwesome </b>
	</summary>
	
Bootstrap, the world’s most popular framework for building responsive, mobile-first sites. Bootstrap was used for all styling and interactive components on the site. Bootstrap was used for its ease of use, aesthetic appeal, numerous components, JS integrations and responsive first properties. Bootstrap speeds up front end development immensely.
Font Awesome is a web font containing all the icons from the Twitter Bootstrap framework, and now many more. It allows you to easily use many icons across your site that are stored remotely.

[Bootstrap](https://getbootstrap.com/docs/4.3/getting-started/introduction/)

[FontAwesome](https://fontawesome.com/?utm_source=v4_homepage&utm_medium=display&utm_campaign=fa5_released&utm_content=banner)

</details>


<details>
	<summary>
		<b> Javascript </b>
	</summary>
	
JavaScript, often abbreviated as JS, is a high-level, interpreted scripting language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions Javascript was also used for many front end interactions, such as repsonsive drop downs and many under the hood Bootstrap integrations.

[Javascript](https://devdocs.io/javascript/)
</details>

### Ruby Gems

 <details>
	<summary>
		<b> Devise </b>
	</summary>
	
Devise is used for user authentication. Everything from Login, Sessions, Secure passwords and more.

[Devise Gem](https://rubygems.org/gems/devise/versions/4.2.0)
</details>

<details>
	<summary>
		<b> Rolify </b>
	</summary>
	
Rolify was first originally used in this Appliction for user Authorisation. However it was conflicting with Heroku, resulting in it being uninstalled. Users are now all Authorised by their user id. Many actions will only go through if they are signed in with devise and their current user id matches the resources attached user id.

[Rolify Gem](https://rubygems.org/gems/rolify)
</details>

<details>
	<summary>
		<b> Cloudinary </b>
	</summary>
	
The Cloudinary gem is used for the integration of the 3rd party service cloudinary. This is used for image uploads through the applicaiton.

[Cloudinary Gem](https://rubygems.org/gems/cloudinary)
</details>

### Third Party Services

<details>
	<summary>
		<b> Cloudinary </b>
	</summary>
	
Cloudinary is a image cloud hosting service that allows you to off-load the tasks of uploading and handling image assests. Cloudinary dynamically optimises your content and delivers it in a fast and efficient manner. 

[Cloudinary](https://cloudinary.com/)

</details>

<details>
	<summary>
		<b> Heroku </b>
	</summary>
	
Heroku is a container-based cloud Platform as a Service (PaaS). Developers use Heroku to deploy, manage, and scale modern apps. This Appliction makes use of Heroku's free service model for small projects. Heorku also streamlines deployment through its Git integration allowing updates to easily be pushed to Heroku as you would any other remote git repository.

[Heorku](https://www.heroku.com/home)

</details>

<details>
	<summary>
		<b> Github</b>
	</summary>
	
Last but not least it Github, a developers best friend. GitHub is a website and cloud-based service that helps developers store and manage their code, as well as track and control changes to their code.

[Github](https://github.com/)

</details>

___
## Database Structure :open_file_folder:

![CodeMeetr Database](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/CodeMeetr_Database_ERD.png?raw=true)

Databases in rails use active record assosciations to creat reationships between the different modls present in the databse. There are also foreign key and primary keys to form the foundations of relational databases. These keys are used to create the connections between the different models. The database is built using postgreSQL , which creates migrations holding the queries and form our database schema. 

The Database focuses on users and events. They are the two largest data sets. As shown above they depend on eachother. An event cannot be created without a user. Each user has

----
## Project plan and Task Management :book:

In the begining of the Assessment I printed out the criteria and made sure to read through all the deliverables and the ruberick. From there I started brainstorming on ideas and researching two sided marketplaces until I formed an idea I would like to persue. I soon formed the plan for a meetup alternative and got to work. To start I made wireframes and some mockups as they helped form an idea of what was needed and how everything will fit together. From there I started a projects board on github and started making tasks for myself. I found this helpful but also found myself writing stuff on random pieces of paper or in my phone notes as they came up as an idea. I need to focus on putting all tasks and ideas in one place.

![Project Board](https://github.com/alexleybourne/CodeMeetr/blob/master/docs/Task_Board.png?raw=true)

I sorted each task in to small bite size pieces to tackle that would slowly form the entire project. It's very satisfying moving a task to complete. I also made some extra features I would like to include also. I would say the hardest part in the begining was thinking of an idea and making sure it was achievable and I could stick to the scope. I started and restarted numerous times to reform my ideas.

---
### Project Timeline:

</details>

<details>
	<summary>
		<b> Timeline</b>
	</summary>
	
- Friday :rocket: - 25/10/19
	 - release date of assignment
	 - research started on ideas
- Sat -> Sun :unamused:
	- unfortunately jam packed full of work
- Mon - 28/10/19 :computer:
	- continued research and began wireframes
- Tues - 29/10/19 :pencil:
	- finalised wireframes and began on some mockups
	- also revised previous lessons
- Wed - 30/10/19 :pencil:
	- stilll working on mockups
	- started writing down features
	- more revision
- Halloween  :jack_o_lantern: :ghost: - 31/10/19
	- completed mockups
	- create project on heroku
- Fri :beers:  - 1/11/19
	- more revision
	- followed a few tutorials on rails
- Sat -> Sun :unamused:
	- unfortunately jam packed full of work again..
- Mon :file_folder: - 4/11/19
	- created project
	- worked out models
	- started ERD
- Tues :file_folder: - 5/11/19
	- continued ERD
	- Set out all data
- Wed :wrench: - 6/11/19
	- ERD complete
	- Setup models and controllers
- Thurs :closed_lock_with_key: - 7/11/19
	- Devise setup
	- Front page created and nav
- Fri :satellite: - 8/11/19
	- Created events
	- Deployed to Heroku
	- Event creation page
	- User links
	- Full page views
	- Rolify
- Sat :sweat_smile: - 9/11/19
	- Felt the stress
	- Got Cloudinary working
	- More Styling 
	-  Search function
- Sun :flushed: - 10/11/19
	- Lots of Final Documentation
	- Testing
	- Heroku Deployments
	- Rolify hating Heroku
	- Destroying Rolify
	- Creating slide deck
- FINISHED :tada:

</details>
