import React from 'react';
import '../Styles/ListRecipe.css';

const ListRecipe = (props) => {
    const {id, title} = props.recipe

    const recipeGetter = (id) => {
        fetch(`http://localhost:3000/recipes/${id}`)
        .then(response => response.json())
        .then(selectedRecipe => props.recipeSetter({selectedRecipe}))
    }

    const deleteListRecipe = (id) => {
        fetch(`http://localhost:3000/list_recipes/${id}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            }
        })
        .then(response => response.json())
        .then(json => props.getSession())
    }

    return(
        <div className="list_recipe_div" >
            <div className="list_recipe" onClick={() => recipeGetter(id)} >
                {title}
            </div>
            <span className="x" role="img" aria-label="x" onClick={() => {
                deleteListRecipe(id)
            }} >✖︎</span>
        </div>
    )
}

export default ListRecipe