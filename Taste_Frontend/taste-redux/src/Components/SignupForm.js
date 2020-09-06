import React from 'react';
import '../Styles/SignupForm.css';

const SignupForm = (props) => {
    
    const handleSubmit = (e) => {
        e.preventDefault()

        fetch("http://localhost:3000/users", {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json'
            },
            body: JSON.stringify({
                username: e.target.username.value,
                password: e.target.password.value,
                password_confirmation: e.target.password_confirmation.value
            })
        })
        .then(res => res.json())
        .then(json => {
                        if(!json.message){
                            props.stateSetter({signupClick: null})
                            props.stateSetter({signedUp: json.username})
                        } else {
                            console.log(json.message)
                        }
                    }
            )
    }

    return(
        <>
            <div className="signup_header" >
                    <h4>Create a new account to rate and keep recipes</h4>
            </div>
            <div className="signup_div" >
                <form className="signup_form" onSubmit={(e) => handleSubmit(e)} >
                    <input
                        className="login_input" 
                        name="username" 
                        placeholder="username"
                        type="text" 
                    />
                    <input
                        className="login_input"
                        name="password"
                        placeholder="password"
                        type="password" 
                    />
                    <input
                        className="login_input"
                        name="password_confirmation"
                        placeholder="confirm password"
                        type="password" 
                    />
                    
                    <button className="submit_button" type="submit">Create User</button>
                    
                </form>
                <button className="back_button" onClick={() => props.stateSetter({signupClick: null})}>Go Back</button>
            </div>
        </>
    )
}

export default SignupForm