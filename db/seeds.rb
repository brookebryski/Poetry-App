Favorite.delete_all
Poem.delete_all
User.delete_all

poems = 
    
    [{title: "Still I Rise", author: "Maya Angelou", link: "https://www.poetryfoundation.org/poems/46446/still-i-rise", image: "https://media.poetryfoundation.org/uploads/media/default/0001/16/aac7a41bab7fe2fa6836ab376d1f87e8792b7b80.jpeg?w=260&h=&fit=max&260"},
    {title: "Because I could not stop for Death-", author: "Emily Dickinson", link: "https://www.poetryfoundation.org/poems/47652/because-i-could-not-stop-for-death-479", image: "https://media.poetryfoundation.org/uploads/media/default/0001/22/c1140d659d1ae1fc5db36c989bcf37941dfca9ee.jpeg?w=260&h=&fit=max&260"},
    {title: "Howl", author: "Allen Ginsberg", link: "https://www.poetryfoundation.org/poems/49303/howl", image: "https://media.poetryfoundation.org/uploads/media/default/0001/17/4e10cff72d74e4bb21ffd9935dac615912684e14.jpeg?w=260&h=&fit=max&260"},
    {title: "The Waste Land", author: "T.S. Eliot", link: "https://www.poetryfoundation.org/poems/47311/the-waste-land-56d227a99ddeb", image: "https://media.poetryfoundation.org/uploads/media/default/0001/16/62769d6432e9ec86915ac64c7437f5b840557fff.jpeg?w=260&h=&fit=max&260"},
    {title: "Daddy", author: "Sylvia Plath", link: "https://www.poetryfoundation.org/poems/48999/daddy-56d22aafa45b2", image: "https://media.poetryfoundation.org/uploads/media/default/0001/16/9335c30d45c8a838017ed7508083bc341aa50e73.jpeg?w=260&h=&fit=max&260"},
    {title: "Middle Passage", author: "Robert Hayden", link: "https://www.poetryfoundation.org/poems/43076/middle-passage", image: "https://media.poetryfoundation.org/uploads/media/default/0001/22/5b9e58dc1b54d736d23d0134da34bc2316f34c86.jpeg?w=260&h=&fit=max&260"},
    {title: "Thirteen Ways of Looking at a Blackbird", author: "Wallace Stevens", link: "https://www.poetryfoundation.org/poems/45236/thirteen-ways-of-looking-at-a-blackbird", image: "https://media.poetryfoundation.org/uploads/media/default/0001/21/10e002a363290a7f317ff18484819baa436e517c.jpeg?w=260&h=&fit=max&260"},
    {title: "Kubla Khan", author: "Samuel Taylor Coleridge", link: "https://www.poetryfoundation.org/poems/43991/kubla-khan", image: "https://media.poetryfoundation.org/uploads/media/default/0001/21/8b954669d9fba67d50b6795ca34004c9658344f8.jpeg?w=260&h=&fit=max&260"},
    {title: "Ozymandias", author: "Percy Bysshe Shelley", link: "https://www.poetryfoundation.org/poems/46565/ozymandias", image: "https://media.poetryfoundation.org/uploads/media/default/0001/02/983d5e3ecbc176c0ab1d7f8e271fbc25752d2bdc.jpeg?w=260&h=&fit=max&260"},
    {title: "The Raven", author: "Edgar Allen Poe", link: "https://www.poetryfoundation.org/poems/48860/the-raven-5964f5014d47a", image: "https://media.poetryfoundation.org/uploads/media/default/0001/21/bd5c888c4689e6cd3583bbe7575a1a2cad3487f6.jpeg?w=260&h=&fit=max&260"},
    {title: "Mock Orange", author: "Louise Glück", link: "https://www.poetryfoundation.org/poems/49601/mock-orange", image: "https://media.poetryfoundation.org/uploads/media/default/0001/23/bf43351ac832537dbe27c5b2f350da1c82a51979.jpeg?w=260&h=&fit=max&260"},
    {title: "We Wear the Mask", author: "Paul Laurence Dunbar", link: "https://www.poetryfoundation.org/poems/44203/we-wear-the-mask", image: "https://media.poetryfoundation.org/uploads/media/default/0001/17/020a4db70aa0cc5c341b6dae9c0a7726ea2ecbc1.jpeg?w=260&h=&fit=max&260"},
    
]

poems.each do |poem|
    Poem.create(poem)
  end