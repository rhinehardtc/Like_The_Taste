import React from 'react';
import Header from './Containers/Header';
import RecipeDetails from './Components/RecipeDetails';
import RecipesContainer from './Containers/RecipesContainer'

export default class Main extends React.Component {

    constructor(){
        super()
        this.state = {
            recipes: [],
            search: ""
        }
    }

    componentDidMount(){
        this.getRecipes()
    }

    getRecipes = () => {
        fetch('http://localhost:3000/recipes')
        .then(response => response.json())
        .then(recipes => this.setState({recipes}))
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

    showRecipeDetails = () => {
        if(this.state.selectedRecipe){
          return <RecipeDetails
                    key={this.state.selectedRecipe.id} 
                    recipe={this.state.selectedRecipe} 
                    dontShowRecipe={this.dontShowRecipe} 
                 />
        } else {
          return <RecipesContainer 
                    recipes={this.state.recipes} 
                    handleSearch={this.handleSearch} 
                    search={this.state.search} 
                    selectRecipe={this.selectRecipe}
                 />
        }
      }

    render(){
        return(
            <div>
                <Header />
                {this.showRecipeDetails()}
            </div>
        )
    }
}