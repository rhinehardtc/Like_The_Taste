import React from 'react';
import '../Styles/SignupForm.css';

const SignupConfirm = (props) => {
    return (
        <>
            <div className="signup_header" >
                <h4>Account Created!</h4>
            </div>
            <div className="signup_div" >
                <h4>Successfully created user {props.name}!</h4>
                <button className="back_button" onClick={() => props.stateSetter({signedUp: null})}>Continue</button>
            </div>
        </>
    )
  }
  
  export default SignupConfirm