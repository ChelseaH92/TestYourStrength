import React, { useState } from 'react';
import { NavLink as RRNavLink } from "react-router-dom";
import { logout } from '../APIManagers/UsersManager';
import { Navbar, NavbarBrand, Nav, NavItem, NavLink } from 'reactstrap';
import './Header.css'

export default function Header({isLoggedIn, setIsLoggedIn}) {

  return (
    <div>
      <Navbar color="light" light expand="md" className='navbar' style={{ marginTop: -17 }}>
        
        <Nav className="nav" navbar style={{display: 'flex', alignItems: 'center', justifyContent: 'space-between', listStyle: 'none'}}>
          {isLoggedIn ?
            <>
            <NavbarBrand tag={RRNavLink} to="/" style={{ lineHeight: 2.5, textDecoration: 'none' }}>Navbar</NavbarBrand>
              <NavItem>
                <NavLink tag={RRNavLink} to="/home" style={{ lineHeight: 2.5, textDecoration: 'none' }}>Home</NavLink>
              </NavItem>

              <NavItem>
                <NavLink tag={RRNavLink} to="/account" style={{ lineHeight: 2.5, textDecoration: 'none' }}>Account</NavLink>
              </NavItem>

              <NavItem>
                <NavLink tag={RRNavLink} to="/admin" style={{ lineHeight: 2.5, textDecoration: 'none' }}>Admin</NavLink>
              </NavItem>

              <NavItem>
                <a aria-current="page" className="nav-link" style={{ cursor: "pointer", listStyle: 'none' }} onClick={() => {
                  logout();
                  setIsLoggedIn(false);
                }}>Logout</a>
              </NavItem>
            </>
            :
            <>
              <NavItem>
                <NavLink tag={RRNavLink} to="/login">Login</NavLink>
              </NavItem>

              <NavItem>
                <NavLink tag={RRNavLink} to="/register">Register</NavLink>
              </NavItem>
            </>
          }
        </Nav>
      </Navbar>
    </div>
  );
}
