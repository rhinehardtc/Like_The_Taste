import React from 'react';
import Header from './Containers/Header';
import User from './Containers/User';
import RecipeDetails from './Components/RecipeDetails';
import RecipesContainer from './Containers/RecipesContainer'

export default class Main extends React.Component {

    constructor(){
        super()
        this.state = {
            recipes: [],
            allIngredients: [],
            allTags: [],
            search: "",
            includedIngredients: [],
            excludedIngredients: [],
            includedTags: [],
            excludedTags: [],
            currentUser: null
        }
    }

    componentDidMount(){
        this.getRecipes()
        this.getIngredients()
        this.getTags()
        this.getSession()
    }

    getSession = () => {
        fetch('http://localhost:3000/check-login', {
            credentials: 'include'
        })
        .then(response => response.json())
        .then(currentUser => {
            if(!currentUser.message){
                this.setState({currentUser})
                console.log(`logged in as ${currentUser.username}`, 
                            `Lists: ${currentUser.lists[0]}`, 
                            `Ratings: ${currentUser.ratings}`)
            } else {
                console.log(currentUser.message)}
            }
        )
    }

    getRecipes = () => {
        fetch('http://localhost:3000/recipes')
        .then(response => response.json())
        .then(recipes => this.setState({recipes}))
    }

    getIngredients = () => {
        fetch('http://localhost:3000/ingredients')
        .then(response => response.json())
        .then(ingredients => this.convertIngredients(ingredients))
    }

    getTags = () => {
        fetch('http://localhost:3000/tags')
        .then(response => response.json())
        .then(tags => this.convertTags(tags))
    }

    convertIngredients = (arr) => {
        const allIngredients = [];
        arr.map(ing => allIngredients.push({label: ing.name, value: ing.id}))
        this.setState({allIngredients})
    }

    convertTags = (arr) => {
        const allTags = [];
        arr.map(tag => allTags.push({label: tag.name, value: tag.name}))
        this.setState({allTags})
    }

    handleSearch = (e)=> {
        this.setState({search: e.target.value.toLowerCase()})
    }

    selectRecipe = (recipe) => {
        this.setState({selectedRecipe: recipe})
        this.showRecipeDetails()
    }

    dontShowRecipe = () => {
        this.setState({selectedRecipe: null})
    }

    stateSetter = (obj) => {
        this.setState(obj)
    }

    showRecipeDetails = () => {
        if(this.state.selectedRecipe){
          return <RecipeDetails
                    key={this.state.selectedRecipe.id} 
                    recipe={this.state.selectedRecipe} 
                    dontShowRecipe={this.dontShowRecipe} 
                    currentUser={this.state.currentUser}
                 />
        } else {
          return <RecipesContainer 
                    recipes={this.state.recipes} 
                    handleSearch={this.handleSearch}
                    allIngredients={this.state.allIngredients}
                    includedIngredients={this.state.includedIngredients}
                    excludedIngredients={this.state.excludedIngredients}
                    allTags={this.state.allTags}
                    includedTags={this.state.includedTags}
                    excludedTags={this.state.excludedTags}
                    search={this.state.search} 
                    stateSetter={this.stateSetter}
                    selectRecipe={this.selectRecipe}
                    currentUser={this.state.currentUser}
                 />
        }
    }

    render(){
        return(
            <div>
                <Header />
                {this.showRecipeDetails()}
                <User 
                    currentUser={this.state.currentUser} 
                    stateSetter={this.stateSetter} 
                    getSession={this.getSession} 
                    selectedRecipe={this.state.selectedRecipe}
                />
            </div>
        )
    }
}