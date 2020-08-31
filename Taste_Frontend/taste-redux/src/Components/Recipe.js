import React from 'react';

const Recipe = (props) => {
    const {id, title, time, description, steps, img_url} = props.recipe
    return(
        <div className="recipe_div" >
            <h1 className="recipe_title">{title}</h1>
            <img className="recipe_img" src={img_url} alt={title} />
            <div>
                <h3>Description</h3>
                <p>{description}</p>
            </div>
            <div>
                <h3>Instructions</h3>
                <p>{steps}</p>
            </div>
        </div>
    )
}

export default Recipe