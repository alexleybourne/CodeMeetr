# T2A2 - Marketplace Project

![CodeMeetr Logo](https://github.com/alexleybourne/CodeMeetr/blob/master/graphics/CodeMeetr_logo.png?raw=true)

Personal Portfolio Assessment @ [Coder Academy](https://coderacademy.edu.au/)

![GitHub followers](https://img.shields.io/github/followers/alexleybourne?style=flat&logo=github) ![Twitter Follow](https://img.shields.io/twitter/follow/AlexLeybourne?&style=flat&logo=twitter&logoColor=white) ![Portfolio](https://img.shields.io/badge/Portfolio-AlexLeybourne.com%20-blue?style=flat&logo=google-chrome&logoColor=white&link=http://alexleybourne.com)



Visit the site: 
[CodeMeetr - Heroku](http://codemeetr.herokuapp.com/)

Source code: 
[Here](https://github.com/alexleybourne/CodeMeetr/tree/master/src)


___

<h2>Application Purpose</h2>
CodeMeetr was inspired by recent events involving the popular events app "meetup.com". Meetup announced they will be charging event holders per user who clicks attending or possibly charging the attendees for their service. This inspired me to create an alternative that would focus on coding and the tech community. The number one spot for your hackathon events, callbacks and other goodies.  <br>

___
<h2> Functionality and Features</h2>
CodeMeetr's main object is to allow code enthusiasts to easily find events that are being hosted around them that interest them. When the user visits the site they are immediately greeted with the top events coming up! 
The user can view the events in a brief overview and then click the event to see more. The events show a cover image, title, host, description, date and time as well as how many people are going and how many spaces are left. 
To click going to an event the user must create an account and sign in. Once you have made an account you are also able to create and manage events. 
Users can also easily search for events by typing in key words that may interest them. The previews also display which events are yours and which events you are already going to in a very intuitive and user friendly manner. 

___
## Feautres 

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
## Tech stack 
<details>
	<summary>
		<b> Ruby on Rails </b>
	</summary>
	
	Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller framework, providing default structures for a database, a web service, and web pages
	
[Rails v- 5.2.3](https://guides.rubyonrails.org/v5.2/getting_started.html)
[Ruby v-2.6.3](https://ruby-doc.org/stdlib-2.6.3/)

</details>

-   HTML
-   SCSS
	- Bootstrap
- Javascript
-   Postgresql
-   Rspec for unit testing
-  Cloudinary for image storage in production
-  Git/Github for source control
-  Heroku for deployment



## User Stories


## Mockups
Wireframes:
[Rough Sketches](https://projects.invisionapp.com/freehand/document/1OlpCT6OA)
[Wireframe Sketches](https://raw.githubusercontent.com/alexleybourne/CodeMeetr/master/graphics/CodeMeetr_wireframe_sketches.png)

Final Mockups:
[Mockups Folder](https://github.com/alexleybourne/CodeMeetr/tree/master/graphics/mockups)



