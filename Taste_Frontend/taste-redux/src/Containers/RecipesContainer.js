import React from 'react';
import { MultiSelect } from '@bit/primefaces.primereact.multiselect';
import PrimereactStyle from '@bit/primefaces.primereact.internal.stylelinks';
import '../Styles/RecipesContainer.css';
import Recipe from '../Components/Recipe';
import Search from '../Components/Search'

const RecipesContainer = (props) => {
              
    let filteredRecipes = props.recipes.filter(recipe => recipe.title.toLowerCase().includes(props.search))

    const getSearch = () => {
        fetch("http://localhost:3000/search", {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            },
            body: JSON.stringify({query: {
                includedIngredients: props.includedIngredients,
                includedTags: props.includedTags,
                excludedIngredients: props.excludedIngredients
            }})
        })
        .then(resp => resp.json())
        .then(recipes => {
            props.stateSetter({recipes})
            console.log(props.includedTags, props.includedIngredients)
        })
    }

    return(
        <div className="recipes_container" >
            {console.log(props.search)}
            <div className="filter_div">
                <Search handleSearch={props.handleSearch} />
                <PrimereactStyle />
                <div className="dropdown_div" >
                    Add Ingredients
                    <MultiSelect
                        value={props.includedIngredients}
                        options={props.allIngredients}
                        onChange={e => props.stateSetter({ includedIngredients: e.value })}
                        style={{ minWidth: '10%', maxWidth: '100%', maxHeight: '30px' }}
                        filter={true}
                    />
                </div>
                <div className="dropdown_div" >
                    Ban Ingredients
                    <MultiSelect
                        value={props.excludedIngredients}
                        options={props.allIngredients}
                        onChange={e => props.stateSetter({ excludedIngredients: e.value })}
                        style={{ minWidth: '10%', maxWidth: '100%', maxHeight: '30px' }}
                        filter={true}
                    />
                </div>
                <div className="dropdown_div" >
                    Add Tags
                    <MultiSelect
                        value={props.includedTags}
                        options={props.allTags}
                        onChange={e => props.stateSetter({ includedTags: e.value })}
                        style={{ minWidth: '10%', maxWidth: '100%', maxHeight: '30px' }}
                        filter={true}
                    />
                </div>
                <div className="dropdown_div" >
                    Ban Tags
                    <MultiSelect
                        value={props.excludedTags}
                        options={props.allTags}
                        onChange={e => props.stateSetter({ excludedTags: e.value })}
                        style={{ minWidth: '10%', maxWidth: '100%', maxHeight: '30px' }}
                        filter={true}
                    />
                </div>
                <button className="search_button" onClick={getSearch} >Search</button>
            </div>
            <div className="container_div" >
                {
                    filteredRecipes.map(recipe => 
                        <Recipe 
                            key={recipe.id}
                            recipe={recipe}
                            handleClick={props.selectRecipe}
                        />
                    )
                }
            </div>
        </div>
    )
}

export default RecipesContainer