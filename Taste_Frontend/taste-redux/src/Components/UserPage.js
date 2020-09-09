import React, {useState} from 'react';
import List from '../Containers/List';
import '../Styles/UserPage.css';
import ListRecipe from './ListRecipe';


const UserPage = (props) => {
    const username = props.currentUser.username

    const [display, setDisplay] = useState(false);

    const logout = () => {
        fetch('http://localhost:3000/logout', {
            credentials: 'include'
        })
        .then(response => response.json())
        .then(json => console.log(json))
    }

    const postList = (e) => {
        e.preventDefault()

        const list = {
            title: e.target.list_name.value,
            user_id: props.currentUser.id
        }

        fetch('http://localhost:3000/lists', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            },
            body: JSON.stringify(list)
        })
        .then(res => res.json())
        .then(currentList => props.getSession())
    }

    const renderList = () => {
        if (props.currentList === null){
            return <div className="user_list_div" >
                        <h4 className="create_list" onClick={() => setDisplay(!display)} >Create List</h4>
                        {
                            display 
                            ?
                            <form onSubmit={(e) => {
                                    postList(e)
                                    e.target.list_name.value = null
                                }
                            }>
                                <input className="list_input" type="text" name="list_name" placeholder="enter list name" ></input>
                                <button className="list_submit_button" type="submit" >create list</button>
                            </form>
                            :
                            null
                        }
                        <div className="list_container" >
                            {listMapper(props.currentUser.lists)}
                        </div>
                    </div>
        } else {
            if (props.currentList.recipes.length > 0){
                return <div className="user_list_div" >
                            <h4 className="list_title" >{props.currentList.title} recipes</h4>
                            {recipeAdder()}
                            <div className="list_container">
                                {recipeMapper(props.currentList.recipes)}
                            </div>
                            <button className="back_list_button" onClick={() => props.listSetter({currentList: null})} >Go Back</button>
                        </div>
            } else {
                return <div className="user_list_div" >
                            <h4 className="list_title" >{props.currentList.title} recipes</h4>
                            {recipeAdder()}
                            <div className="list_container">
                                <p className="no_list" >no recipes yet</p>
                                <button className="back_list_button" onClick={() => props.listSetter({currentList: null})} >Go Back</button>
                            </div>
                       </div>

            }
        }
    }

    const recipeAdder = () => {
        if(props.selectedRecipe){
            return <button className="add_to_list_button" onClick={() => createListRecipe(props.currentList.id, props.selectedRecipe.id)} >Add Recipe</button>
        }
    }

    const createListRecipe = (list_id, recipe_id) => {
        console.log(list_id, recipe_id)
        fetch(`http://localhost:3000/list_recipes`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            },
            body: JSON.stringify({
                list_id,
                recipe_id
            })
        })
        .then(response => response.json())
        .then(listRecipe => {
            if(!listRecipe.message){
                props.getSession()
            } else {
                alert(listRecipe.message)
            }
        })
        .then(() =>renderList())
    }

    const listMapper = (arr) => {
        return arr.map(list => 
            <List 
                key={list.id} 
                list={list} 
                listSetter={props.listSetter} 
                currentUserLists={props.currentUser.lists} 
                getSession={props.getSession} 
            />
        )
    }

    const recipeMapper = (arr) => {
        return arr.map(recipe => 
            <ListRecipe 
                key={recipe.id} 
                recipe={recipe} 
                list={props.currentList}
                listSetter={props.listSetter} 
                recipeSetter={props.stateSetter} 
                getSession={props.getSession}
            />
        )
    }

    return(
        <>
            <div className="user_header" >
                <h4>Welcome, {username}!</h4>
                <button className="logout_button" onClick={() => {
                        logout()
                        props.listSetter({currentList: null})
                        props.stateSetter({currentUser: null})
                    }
                }>Logout</button>
            </div>
            {renderList()}
        </>
    )
}

export default UserPage