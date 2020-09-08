import React from 'react';
import '../Styles/List.css';

const List = (props) => {
    const {title, recipes, user} = props.list
    return(
        <div className="list" >
            {title}
        </div>
    )
}

export default List