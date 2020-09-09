import React from 'react';
import '../Styles/ListRecipe.css';

const ListRecipe = (props) => {
    const {id, title} = props.recipe

    const recipeGetter = (id) => {
        fetch(`http://localhost:3000/recipes/${id}`)
        .then(response => response.json())
        .then(selectedRecipe => props.recipeSetter({selectedRecipe}))
    }

    const findAndDeleteListRecipe = () => {
        fetch(`http://localhost:3000/list_recipes`)
        .then(response => response.json())
        .then(listRecipes => {
            for(const listRecipe of listRecipes){
                if(listRecipe.recipe_id === id && listRecipe.list_id === props.list.id){
                    deleteListRecipe(listRecipe.id)
                }
            }
        })
    }

    const deleteListRecipe = (id) => {
        console.log(id)
        fetch(`http://localhost:3000/list_recipes/${id}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            }
        })
        .then(response => response.json())
        .then(json => props.listGetter(props.list.id))
    }

    return(
        <div className="list_recipe_div" >
            <div className="list_recipe" onClick={() => recipeGetter(id)} >
                {title}
            </div>
            <span className="x" role="img" aria-label="x" onClick={() => {
                findAndDeleteListRecipe()
            }} >✖︎</span>
        </div>
    )
}

export default ListRecipe