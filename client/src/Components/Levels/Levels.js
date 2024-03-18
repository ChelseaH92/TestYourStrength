import { Link, Outlet, Route, Routes } from "react-router-dom";
import './Levels.css'

export const Levels = () => {
    const localUser = localStorage.getItem("userProfile")
    const strengthUser = JSON.parse(localUser)

    const levelA1 = () => {
        strengthUser.levelId = 1
        localStorage.setItem("userProfile", JSON.stringify(strengthUser))
    }

    const levelA2 = () => {
        strengthUser.levelId = 2
        localStorage.setItem("userProfile", JSON.stringify(strengthUser))
    }

    const levelB1 = () => {
        strengthUser.levelId = 3
        localStorage.setItem("userProfile", JSON.stringify(strengthUser))
    }

    const levelB2 = () => {
        strengthUser.levelId = 4
        localStorage.setItem("userProfile", JSON.stringify(strengthUser))
    }

    const levelC1 = () => {
        strengthUser.levelId = 5
        localStorage.setItem("userProfile", JSON.stringify(strengthUser))
    }

    const levelC2 = () => {
        strengthUser.levelId = 6
        localStorage.setItem("userProfile", JSON.stringify(strengthUser))
    }


    return (
        <div className="home-container">
        <div className="level-buttons-container">
          <h1 className="title--main">Choose Your Difficulty</h1>
          <br />
          <button onClick={levelA1} className="level-buttons"><Link to = "/test">A1 / Novice</Link></button>
          <button onClick={levelA2} className="level-buttons"><Link to = "/test">A2 / Intermediate</Link></button>
          <button onClick={levelB1} className="level-buttons"><Link to = "/test">B1 / Advanced</Link></button>
          <button onClick={levelB2} className="level-buttons"><Link to = "/test">B2 / Superior</Link></button>
          <button onClick={levelC1} className="level-buttons"><Link to = "/test">C1 / Distinguished</Link></button>
          <button onClick={levelC2} className="level-buttons"><Link to = "/test">C2 / Mastery</Link></button>
          {/* <div>
            ipsum Latin something something
          </div> */}
       </div>
         
      </div>
    );
  };