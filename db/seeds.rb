User.create(username: 'brooke', email: 'brooke@email.com')
User.create(username: 'bethany', email: 'bethany@email.com')
User.create(username: 'ashley', email: 'ashley@email.com')

Poem.create(user_id: 1, title: "Baby", content: "Baby, baby, baby / Oh / Baby, baby, baby / No / Baby, baby, baby / Oh / Thought You'd always be mine")
Poem.create(user_id: 1, title: "On The Sea", content: "On the Sea / All is Forgiven")
Poem.create(user_id: 1, title: "Space Song", content: "It was late at night / You held on tight / To a narraow / Ray of light")

Poem.create(user_id: 2, title: "LA", content: "City of Angels / What have you up your sleeve? / City of Angeles / What am I supposed to believe?")
Poem.create(user_id: 2, title: "Astronaut", content: "Fall / Back / In / To / Place")
Poem.create(user_id: 2, title: "Lemon", content: "Even with the lights down low / Lemon colored heartbeat glow")

Poem.create(user_id: 3, title: "Saturn", content: "I was coming closer / To a new world order")
Poem.create(user_id: 3, title: "Party", content: "Tiny little ray of light / Where will you lead me to tonight?")
Poem.create(user_id: 3, title: "Good Time", content: "I had a good time / Making something out of nothing / If only for a short time")


Comment.create(user_id: 1, poem_id: 1, content: 'I loved this poem!')
Comment.create(user_id: 2, poem_id: 1, content: 'Excellent work!')
Comment.create(user_id: 3, poem_id: 1, content: 'Such a beautiful poem!')

Comment.create(user_id: 1, poem_id: 2, content: 'Stunning!')
Comment.create(user_id: 2, poem_id: 2, content: 'Wonderful piece!')
Comment.create(user_id: 3, poem_id: 2, content: 'Phenomenal poem.')

Comment.create(user_id: 1, poem_id: 3, content: 'Beautiful work.')
Comment.create(user_id: 2, poem_id: 3, content: 'I adored this poem!')
Comment.create(user_id: 3, poem_id: 3, content: 'Incredible!')

Comment.create(user_id: 1, poem_id: 1, content: 'Wonderful!')
Comment.create(user_id: 2, poem_id: 1, content: 'Amazing.')
Comment.create(user_id: 3, poem_id: 1, content: 'Beautiful piece of work.')

Comment.create(user_id: 1, poem_id: 2, content: 'I loved this!')
Comment.create(user_id: 2, poem_id: 2, content: 'Keep up the good work!')
Comment.create(user_id: 3, poem_id: 2, content: 'Such a gorgeous piece')

Comment.create(user_id: 1, poem_id: 3, content: 'Love this poem!')
Comment.create(user_id: 2, poem_id: 3, content: 'Amazing!')
Comment.create(user_id: 3, poem_id: 3, content: 'Great job!')

Comment.create(user_id: 1, poem_id: 1, content: 'Such good work!')
Comment.create(user_id: 2, poem_id: 1, content: 'My favorite work of yours!')
Comment.create(user_id: 3, poem_id: 1, content: 'Wonderful!')

Comment.create(user_id: 1, poem_id: 2, content: 'You are such a great poet!')
Comment.create(user_id: 2, poem_id: 2, content: 'Well done!')
Comment.create(user_id: 3, poem_id: 2, content: 'I enjoyed this so much!')

Comment.create(user_id: 1, poem_id: 3, content: 'Phenomenal!')
Comment.create(user_id: 2, poem_id: 3, content: 'Great job on this!')
Comment.create(user_id: 3, poem_id: 3, content: 'Cannot wait to see more of your work!')