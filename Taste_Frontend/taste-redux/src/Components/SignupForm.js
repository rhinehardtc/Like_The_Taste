import React from 'react';
import '../Styles/SignupForm.css';

const SignupForm = (props) => {
    return(
        <>
            <div className="signup_header" >
                    <h4>Create a new account to rate and keep recipes</h4>
            </div>
            <div className="signup_div" >
                <button className="back_button" onClick={() => props.stateSetter({signupClick: null})}>Go Back</button>
            </div>
        </>
    )
}

export default SignupForm