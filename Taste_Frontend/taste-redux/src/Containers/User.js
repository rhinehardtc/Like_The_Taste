import React from 'react';
import LoginForm from '../Components/LoginForm';
import SignupForm from '../Components/SignupForm';
import UserOptions from '../Components/UserOptions';
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