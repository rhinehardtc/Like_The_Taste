import React from 'react';
import '../Styles/List.css';

const List = (props) => {
    const {id, title} = props.list

    const listGetter = (id) => {
        fetch(`http://localhost:3000/lists/${id}`)
        .then(response => response.json())
        .then(currentList => props.listSetter({currentList}))
    }

    const deleteList = (id) => {
        fetch(`http://localhost:3000/lists/${id}`, {
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
        <div className="list_and_button" >
            <div className="list" onClick={() => listGetter(id)} >
                {title} 
            </div>
            <span className="x" role="img" aria-label="x" onClick={() => {
                deleteList(id)
            }} >✖︎</span>
        </div>
    )
}

export default List