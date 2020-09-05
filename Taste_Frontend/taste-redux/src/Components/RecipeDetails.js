import React from 'react';
import StarRating from '@bit/joaobelo.ui-components.star-rating';
import '../Styles/RecipeDetails.css';

const RecipeDetails = (props) => {

    const {title, time, description, steps, img_url, ratings} = props.recipe
    let nums = ratings.map(rating => rating.number)

    let average = 0;

    if (nums.length > 0){
        average = nums.reduce((a,b) => a+b)/nums.length
    } else {
        average = 0
    }

    return(
        <div className="recipe_details_div" >
            {console.table(props.recipe.ingredients)}
            {console.table(props.recipe.tags)}
            {console.log(nums)}
            <StarRating colorPrimary={'#ffe139'} colorSecondary={'#252b74'} starText={'✮'} rating={average} />
            <h4>Click to Rate!</h4>
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