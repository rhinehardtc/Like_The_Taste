import React from 'react';
import '../Styles/LoginForm.css';

const LoginForm = (props) => {
    const handleSubmit = (e) => {
        e.preventDefault()
        console.log(e.target.username.value, e.target.password.value)
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
                        
                </form>
                <button className="back_button" onClick={() => props.stateSetter({loginClick: null})}>Go Back</button>
            </div>
        </>
    )
}

export default LoginForm