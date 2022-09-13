import React from 'react'
import { Link } from "react-router-dom"

function NavBar() {

    return (
        <div>
            <Link to="/" >Home</Link>
            <Link to="/games" > Games</Link>
            <Link to="/login" > Login</Link>
        </div>
    )
}

export default NavBar
