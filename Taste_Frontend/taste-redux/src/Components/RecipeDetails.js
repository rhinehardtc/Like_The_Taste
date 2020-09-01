import React from 'react';
import '../Styles/RecipeDetails.css';

const RecipeDetails = (props) => {
    const {id, title, time, description, steps, img_url} = props.recipe
    return(
        <div className="recipe_details_div" >
            {console.table(props.recipe.ingredients)}
            {console.table(props.recipe.tags)}
            <h1 className="recipe_title">{title}</h1>
            <img className="recipe_detail_img" src={img_url} alt={title} onClick={() => props.dontShowRecipe()} />
            <div className="details" >
                <h2>Cooktime: {time} minutes</h2>
                <div>
                    <h3>Description</h3>
                    {description.map(desc => <p>{desc}</p>)}
                </div>
                <div>
                    <h3>Instructions</h3>
                    {steps.map(step => <p>{step}</p>)}
                </div>
            </div>
        </div>
    )
}

export default RecipeDetails