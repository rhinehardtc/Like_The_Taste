import React from 'react';
import LoginForm from '../Components/LoginForm';
import SignupForm from '../Components/SignupForm';
import UserOptions from '../Components/UserOptions';
import SignupConfirm from '../Components/SignupConfirm';
import '../Styles/User.css';

export default class User extends React.Component {
    
    constructor(){
        super()
        this.state = {
        }
    }

    stateSetter = (obj) => {
        this.setState(obj)
    }

    manageLogin = () => {
        if(this.state.signupClick){
            return <SignupForm stateSetter={this.stateSetter} />
        } else if(this.state.loginClick) {
            return <LoginForm stateSetter={this.stateSetter} />
        } else if(this.state.signedUp) {
            return <SignupConfirm stateSetter={this.stateSetter} name={this.state.signedUp} />
        } else {
            return <UserOptions stateSetter={this.stateSetter} />
        }
    }
   
    render(){
        return (
            <div className="user_container_div" >
                <div className="profile_list">
                    {this.manageLogin()}
                </div>
            </div>
        )
    }
}