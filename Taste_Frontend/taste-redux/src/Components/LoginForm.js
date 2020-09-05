import React from 'react';
import '../Styles/LoginForm.css';

const LoginForm = (props) => {
    return(
        <>
            <div className="login_header" >
                    <h4>Login to existing account</h4>
            </div>
            <div className="login_div" >
                <button className="back_button" onClick={() => props.stateSetter({loginClick: null})}>Go Back</button>
            </div>
        </>
    )
}

export default LoginForm