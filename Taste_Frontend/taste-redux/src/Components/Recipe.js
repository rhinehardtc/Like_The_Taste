import React from 'react';
import '../Styles/Recipe.css';

const Recipe = (props) => {
    const {id, title, time, description, steps, img_url} = props.recipe
    return(
        <div className="recipe_div" >
            {console.table(props.recipe.ingredients)}
            {console.table(props.recipe.tags)}
            <h2 className="recipe_title">{title}</h2>
            <img className="recipe_img" src={img_url} alt={title} onClick={() => props.handleClick(props.recipe)} />
        </div>
    )
}

export default Recipe