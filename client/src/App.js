import React, { useState } from 'react';
import { BrowserRouter as Router } from "react-router-dom";
import Header from './nav/Header';
import { ApplicationViews } from './Views/ApplicationViews';
import { useEffect } from 'react';
import Authorize from './Auth/Authorize'

function App() {
    const [isLoggedIn, setIsLoggedIn] = useState(true);


    useEffect(() => {
        if (!localStorage.getItem("userProfile")) {
            setIsLoggedIn(false)

        }
    }, [isLoggedIn])

    return (
        <Router>
            <Header isLoggedIn={isLoggedIn} setIsLoggedIn={setIsLoggedIn} />
            {isLoggedIn ?
                <ApplicationViews />
                :
                <Authorize setIsLoggedIn={setIsLoggedIn} />
            }
        </Router>
    );
}

export default App;