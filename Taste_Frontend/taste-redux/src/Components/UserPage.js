import React, {useState} from 'react';
import List from '../Containers/List';
import '../Styles/UserPage.css';


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

        console.log(list)
        fetch('http://localhost:3000/lists', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            },
            body: JSON.stringify(list)
        })
        .then(res => res.json())
        .then(json => console.log(json))
    }

    return(
        <>
            <div className="user_header" >
                <h4>Welcome, {username}!</h4>
                <button className="logout_button" onClick={() => {
                        logout()
                        props.stateSetter({currentUser: null})
                    }
                }>Logout</button>
            </div>
            <div className="user_list_div" >
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
                    {props.currentUser.lists.map(list => 
                        <List key={list.id} list={list} />
                    )}
                </div>
            </div>
        </>
    )
}

export default UserPage