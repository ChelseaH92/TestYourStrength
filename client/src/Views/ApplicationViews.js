import { Link, Routes, Route } from "react-router-dom";
import { Levels } from "../Components/Levels/Levels";
import { Button } from "reactstrap";
import { Languages } from "../Components/Languages/Languages";
import QuestionsList from "../Components/Questions/QuestionList";
import AnswersList from "../Components/Answers/AnswerList";
import Account from "../Components/Users/UserProfile";
import { AdminList } from "../Components/Users/AdminList";
import { EditUser } from "../Components/Users/AdminEdit";
import ExplainPage from "../Components/ExplainPage";
import TestResults from "../Components/TestResults";
import Homepage from "../Components/Homepage";
import './ApplicationViews.css'

export const ApplicationViews = () => {
    const localUser = localStorage.getItem("userProfile");
    const strengthUser = JSON.parse(localUser);

    const pickMandarin = () => {
        strengthUser.languageId = 2;
        localStorage.setItem("userProfile", JSON.stringify(strengthUser));
    };
    
    const pickSpanish = () => {
        strengthUser.languageId = 1;
        localStorage.setItem("userProfile", JSON.stringify(strengthUser));
    };

    return (
        <Routes>
            <Route path="/" element={<Homepage />} />
            <Route path="/home" element={
                <div className="home-container">
                    <div className="home-content">
                        <h1 className="title--main">Choose Your Fighter</h1>
                        <br />
                        <Button onClick={pickMandarin} className="language-button">
                            <Link to="/levels">Mandarin Chinese</Link>
                        </Button>
                        <Button onClick={pickSpanish} className="language-button">
                            <Link to="/levels">Spanish</Link>
                        </Button>
                        <Button className="explain-button">
                            <Link to="/ExplainPage" >CEFR / ACTFL Explanation</Link>
                        </Button>
                        {/* <div>
                            ipsum Latin something something
                        </div> */}
                    </div>
                </div>
            } />
            <Route path="/account" element={<Account />} />
            <Route path="/admin" element={<AdminList />} />
            <Route path="/admin/edit/:id" element={<EditUser />} />
            <Route path="/levels" element={<Levels />} />
            <Route path="/explainpage" element={<ExplainPage />} />
            <Route path="/languages" element={<Languages />} />
            <Route path="/test" element={<QuestionsList />} />
            <Route path="/answer" element={<AnswersList />} />
            <Route path="/results" element={<TestResults/>} />
        </Routes>
    );
};
