const BASE_URL = "http://localhost:3000"
const POEMS_URL = `${BASE_URL}/poems`
const USERS_URL = `${BASE_URL}/users`
const FAVORITES_URL = `${BASE_URL}/favorites`
const poemCollection = document.querySelector('#poem-collection')
const favCollection = document.querySelector('#fav-collection')
const likeButton = document.querySelector('.like-btn')
const signupForm = document.querySelector('#signup-form')
const signupInputs = document.querySelectorAll(".signup-input")
const header = document.querySelector('.header-banner')
const logoutButton = document.querySelector('.logout-btn')

let loggedIn = null
let currentUser

class Poem {
    constructor(poemAttributes) {
        this.title = poemAttributes.title;
        this.author = poemAttributes.author;
        this.link = poemAttributes.link;
        this.image = poemAttributes.image;
        this.id = poemAttributes.id;
    }

    render() {
        return `<div class="card">
                  <h2>${this.title} (${this.author})</h2>
                  <a href=${this.link} target="_blank"><img src=${this.image} class="poem-image" /></a>
                  <button data-poem-id=${this.id} class="like-btn">♡</button>
                </div>`
    }
}

function putPoemsOnDom(poemArray){
    poemCollection.innerHTML = `<h2 class="subheader">All Poems</h2>
                                <h4 class="favorites-link">View My Favorites ♡</h4>`
    poemArray.forEach(poem => {
        poemCollection.innerHTML += new Poem(poem).render()

    })
}

function putFavoritesOnDom(favArray){
    favCollection.innerHTML = `<h2 class="subheader">My Favorites</h2>
                               <h4 class="back-link">←Back to Poems</h4>`
    favArray.forEach(favorite => {
        favCollection.innerHTML += `<div class="card">
          <h2>${favorite.poem.title} (${favorite.poem.author})</h2>
          <a href=${favorite.poem.link} target="_blank"><img src=${favorite.poem.image} class="poem-image" /></a>
          <button data-gift-id=${favorite.poem.id} class="like-btn" style="color:red;">♡</button>
        </div>`
    })
}

function fetchPoems(){
    fetch(POEMS_URL)
    .then(res => res.json())
    .then(poems => putPoemsOnDom(poems))
}

function fetchFavorites(){
    fetch(BASE_URL + '/users/' + currentUser.id + '/favorites')
    .then(res => res.json())
    .then(favorites => putFavoritesOnDom(favorites))
}

signupForm.addEventListener('submit', function(e){
    e.preventDefault()
    fetch(USERS_URL, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify({
            user: {
                email: signupInputs[0].value,
                password: signupInputs[1].value
            }
        })
    })
    .then(res => res.json())
    .then(function(object){
        if (object.message) {
            alert(object.message)
        }
        else {
        loggedInUser(object)
        }
    }
    )
})

logoutButton.addEventListener('click', function(e) {
    localStorage.clear(loggedIn)
    window.location.reload()
})

poemCollection.addEventListener('click', function(e) {
    if (e.target.className == "favorites-link") {
        poemCollection.style.display = 'none';
        fetchFavorites();
        favCollection.style.display = 'initial';
    }
})

favCollection.addEventListener('click', function(e) {
    if (e.target.className == "back-link") {
        favCollection.style.display = 'none';
        poemCollection.style.display = 'initial';
    }
})

function loggedInUser(object){
    currentUser = object
    signupForm.style.display = 'none'
    welcome.innerHTML = `<h3>Hello, <i>${currentUser.email}</i> !</h3>`
    logout.innerText = "Logout"
    fetchPoems()
}

poemCollection.addEventListener('click', function(e){
    if ((e.target.className == "like-btn") && (event.target.style.color !== 'red')) {
        let target = e.target
            fetch(FAVORITES_URL, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    Accept: "application/json"
                },
                body: JSON.stringify({
                        user_id: `${currentUser.id}`,
                        poem_id: `${e.target.dataset.poemId}`
                })
        })
        .then( res => res.json())
        .then( res => target.dataset.favId = res.id);
        event.target.style.color = 'red';}
    else if ((e.target.className == "like-btn") && (e.target.style.color == 'red')) {
        e.target.style.color = 'black';
        fetch(FAVORITES_URL + '/' + e.target.dataset.favId, {
            method: "DELETE"
        })
    }
})
