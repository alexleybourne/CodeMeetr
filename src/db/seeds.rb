#These are all my seedlings db:reset to watch them sprout

Image.destroy_all
Event.destroy_all
Category.destroy_all
Pricing.destroy_all
Promotion.destroy_all
User.destroy_all

User.create([
    {
        email: 'johnsmith@gmail.com',
        password:'Password1',
        password_confirmation:'Password1',
        dob: '1998-08-11',
        first_name:'John',
        last_name:'Smith'
    },
    {
        email: 'JoeMama@gmail.com',
        password:'Password1',
        password_confirmation:'Password1',
        dob: '1997-05-18',
        first_name:'Joe',
        last_name:'Mama'
    },
    {
        email: 'yura@badcoder.com',
        password:'Password1',
        password_confirmation:'Password1',
        dob: '1999-03-11',
        first_name:'Yura',
        last_name:'Badcoder'
    },
    {
        email: 'leybs02@gmail.com',
        password:'Password1',
        password_confirmation:'Password1',
        dob: '1998-08-11',
        first_name:'Alex',
        last_name:'Leybourne'
    }
])

Role.create!(name: 'normal_user')
Role.create!(name: 'admin')


Pricing.create([
    {
        price: 0,
        capacity: 20
    },
    {
        price: 4.95,
        capacity: 50
    },
    {
        price: 9.95,
        capacity: 100
    },
    {
        price: 14.95,
        capacity: 200
    }
])

Promotion.create([
    {
        price: 0,
        priority: 0
    },
    {
        price: 14.95,
        priority: 1
    },
    {
        price: 29.95,
        priority: 2
    },
    {
        price: 34.95,
        priority: 3
    }
])

Category.create([
    {
        name: 'Hackathon'
    },
    {
        name: 'Meetup'
    },
    {
        name: 'Callback'
    },
    {
        name: 'Info'
    },
    {
        name: 'Illuminati'
    }
])

User.first.owned_events.create([
    {
        pricing: Pricing.all[0],
        promotion: Promotion.all[1],
        title: 'John can Code',
        description: "I'm telling you guys I know how to code! I can hear you all at the water coolers laughing about how I can't even write html but I can!
        Come to my event and I will prove it to you. For a small entry fee of $10 at the door. Then I will completely destroy you with all my coding knowledge.",
        cover_image: "https://images.unsplash.com/photo-1542744173-05336fcc7ad4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1382&q=80",
        host_name: "Johns Company",
        color: "primary",
        location: "River City Labs",
        start_time: Time.now,
        end_time: Time.now.advance(days: 1),
        users: User.all,
        categories: Category.all
    },
    {
        pricing: Pricing.all[2],
        promotion: Promotion.all[3],
        title: 'Rspec Support Group',
        description: "Has Rspec ever hurt you or someone you love? I know it has. It has hurt anyone near a computer these days. Come in tofay to learn how to prevent these attacks and coping mechanisms.
        You never know when Rspec will destroy your brain.",
        cover_image: "https://images.unsplash.com/photo-1552345386-6690de5b2c09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        host_name: "No test Labratories",
        color: "danger",
        location: "Bing HQ",
        start_time: Time.now.advance(days: 1),
        end_time: Time.now.advance(days: 2),
        users: User.all,
        categories: [Category.all[0]]
    },
    {
        pricing: Pricing.all[1],
        promotion: Promotion.all[1],
        title: 'The Hackathon',
        description: "This Hackathon is like no other hackathon that has ever been hacked or thon'd. You must create a hackathon within the hackahton in 24 hours. The team with the best hackathon and most attendess
        wins a cool sticker and a time share in Fiji.",
        cover_image: "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        host_name: "Hack Inc.",
        color: "success",
        location: "River City Labs Dungeons",
        start_time: Time.now.advance(days: 4),
        end_time: Time.now.advance(days: 6),
        users: User.all,
        categories: [Category.all[3]]
    },
    {
        pricing: Pricing.all[2],
        promotion: Promotion.all[3],
        title: 'Coder Callback',
        description: "We call people while they're coding and see if they ever call us back!. Uhmm yeah thats about it. We didn't think of what to even do if they return the call.",
        cover_image: "https://images.unsplash.com/photo-1556330613-64239236070d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        host_name: "Telstra",
        color: "info",
        location: "Telstra Purple",
        start_time: Time.now.advance(days: 12),
        end_time: Time.now.advance(days: 13),
        users: User.all,
        categories: [Category.all[1]]
    },
    {
        pricing: Pricing.all[1],
        promotion: Promotion.all[1],
        title: 'Pizza and Python',
        description: "Learn how to code python while having super greasy fingers all over your new macbook that you're slowly colouring in with stickers! We have pizza stickers too. You better come over or you don't get any free pizza.",
        cover_image: "https://images.unsplash.com/photo-1569698170031-21b776b6468e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1786&q=80",
        host_name: "Tech Hut",
        color: "warning",
        location: "Not Pizza Hut",
        start_time: Time.now.advance(days: 4),
        end_time: Time.now.advance(days: 6),
        users: User.all,
        categories: [Category.all[3]]
    }
    
])

user = User.find_by(email: "leybs02@gmail.com")
user.owned_events.create([
    {
        pricing: Pricing.all[0],
        promotion: Promotion.all[1],
        title: 'Time Management 101',
        description: "When I had my life hit the fan the first thing I thought was good thing I planned to use this last week to do majority of my assignment. JK! I wish I had started form the begining, which would have reduced my stress by 2,000 percent.
        anyways in this event I will teach you how to manage your time better than myself, but then probably go do it again next assessment.",
        cover_image: "https://images.unsplash.com/photo-1550534791-2677533605ab?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
        host_name: "Time Travelers Inc.",
        color: "dark",
        location: "The lock Store",
        start_time: Time.now,
        end_time: Time.now.advance(days: 1),
        users: User.all[0,2],
        categories: Category.all
    },
    {
        pricing: Pricing.all[2],
        promotion: Promotion.all[3],
        title: 'Free Food!',
        description: "River city labs kitchen is magic! their fridge always fills up with new and different food! Just rockup and we'll have a small free feast and chat code and whatever else you want. Just don't eat the sandwhiches named Kevin, I have dibs on them.",
        cover_image: "https://images.unsplash.com/photo-1536353284924-9220c464e262?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80",
        host_name: "One Hungry Coder",
        color: "warning",
        location: "River City Labs Kitchen",
        start_time: Time.now.advance(days: 3),
        end_time: Time.now.advance(days: 4),
        users: User.all[1, 2],
        categories: [Category.all[0]]
    }
])