import React from 'react';
import '../Styles/LoginForm.css';

const LoginForm = (props) => {
    const handleSubmit = (e) => {
        e.preventDefault()

        fetch("http://localhost:3000/login", {
            credentials: "include",
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            },
            body: JSON.stringify({
                username: e.target.username.value,
                password: e.target.password.value
            })
        })
        .then(res => res.json())
        .then(currentUser => {
                        props.stateSetter({currentUser})
                    }
            )
    }

    return(
        <>
            <div className="login_header" >
                    <h4>Login to existing account</h4>
            </div>
            <div className="login_div" >
                <form className="login_form" onSubmit={(e) => handleSubmit(e)} >
                    <input
                        className="login_input"  
                        name="username" 
                        placeholder="username"
                        type="text" 
                        value={props.username}
                    />
                    <input
                        className="login_input"
                        name="password"
                        placeholder="password"
                        type="password" 
                        value={props.password}
                    />
                        
                    <button className="submit_button" type="submit">Login</button>
                    <button className="back_button" onClick={() => props.clickSetter({loginClick: null})}>Go Back</button>
                </form>
            </div>
        </>
    )
}

export default LoginForm