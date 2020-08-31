import React from 'react';
import Header from './Containers/Header';
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

    render(){
        return(
            <div>
                <Header />
                <RecipesContainer recipes={this.state.recipes} handleSearch={this.handleSearch} search={this.state.search} />
            </div>
        )
    }
}