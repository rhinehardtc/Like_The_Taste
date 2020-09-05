import React from 'react';
import '../Styles/UserOptions.css';

const UserOptions = (props) => {
    return(
        <>
            <div className="user_header" >
                <h4>Login to create lists and rate recipes</h4>
            </div>
            <div className="user_options_div" >
                <button className="login_button" onClick={() => props.stateSetter({loginClick: true})}>Login</button>
                <button className="signup_button" onClick={() => props.stateSetter({signupClick: true})}>Signup</button>
            </div>
        </>
    )
}

export default UserOptions