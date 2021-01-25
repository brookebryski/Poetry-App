Favorite.delete_all
Poem.delete_all
User.delete_all

poems = 
    
    [{title: "The Red Wheelbarrow", author: "William Carlos Williams", link: "https://www.poetryfoundation.org/poems/45502/the-red-wheelbarrow", image: "https://media.poetryfoundation.org/uploads/media/default/0001/22/b1538427e0ee77471a396be295eb85b4baa27e5a.jpeg?w=690&h=&fit=max&690"},
    {title: "The Road Not Taken", author: "Robert Frost", link: "https://www.poetryfoundation.org/poems/44272/the-road-not-taken", image: "https://media.poetryfoundation.org/uploads/media/default/0001/22/e4e2b4ab2045540b0b12862a3dd6276c086476c4.jpeg?w=690&h=&fit=max&690"},
    {title: "Harlem", author: "Langston Hughes", link: "https://www.poetryfoundation.org/poems/46548/harlem", image: "https://media.poetryfoundation.org/uploads/media/default/0001/21/243b5a66eaf2658e5d804be75f1d2a9436bebfe0.jpeg?w=690&h=&fit=max&690"},
    
]

poems.each do |poem|
    Poem.create(poem)
  end