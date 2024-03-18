import React from 'react';
import { Link } from 'react-router-dom';
import './Homepage.css'

const Homepage = () => {
    return (
        <div className="homepage-container">
            <div style={{ textAlign: "center", marginTop: "80vh" }}>
                <button className="enter-button">
                    <Link to="/home" style={{ textDecoration: 'none', color: 'inherit' }}>Enter Here</Link>
                </button>
            </div>
        </div>
    );
};

export default Homepage;
