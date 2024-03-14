import React, { useState, useEffect } from 'react';
import { getUserByEmail } from '../../APIManagers/UsersManager';
import "./UserProfile.css"

export const Account = () => {
    const [userData, setUserData] = useState({});
    const userString = localStorage.getItem("userProfile")

  
    const getUser = (email) => {
      getUserByEmail(email). then(user => setUserData(user))
    }
  
    useEffect(() => {
      getUser(userString.email)
    }, []); 
    
  console.log(userData)
  
    return (
       
            <div className="account-card">
            <h1>User Account Page</h1>
            <h2><span className='username-card'>Username:</span> {userData?.username}</h2>
            <p><span className='email-card'>Email:</span> {userData?.email}</p>
            <div>
            </div>
          </div>
        
        
      );
    };
  
  export default Account;