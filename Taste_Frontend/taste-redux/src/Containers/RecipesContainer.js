import React from 'react';
import '../Styles/RecipesContainer.css';
import Recipe from '../Components/Recipe';
import Search from '../Components/Search'

const RecipesContainer = (props) => {
    let filteredRecipes = props.recipes.filter(recipe => recipe.title.toLowerCase().includes(props.search))
    return(
        <div className="recipes_container" >
            {console.log(props.search)}
            <div className="filter_div">
                <Search handleSearch={props.handleSearch} />
            </div>
            {
                filteredRecipes.map(recipe => 
                    <Recipe 
                        key={recipe.id}
                        recipe={recipe}
                    />
                )
            }
        </div>
    )
}

export default RecipesContainer