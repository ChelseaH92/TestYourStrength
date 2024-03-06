import { Outlet, Route, Routes } from "react-router-dom";

export const ApplicationViews = () => {
    const commonHomeContent = (
      <div className="home-container">
        <div className="home-content">
          <h1 className="title--main">A Title</h1>
          <h4 className="second-title">A Secondary Title</h4>
          <br />
          <div>
            ipsum Latin something something
          </div>
       </div>
         
      </div>
    );
  
    return (
      <Routes>
        <Route path="/" element={commonHomeContent} />
        <Route path="/home" element={commonHomeContent} />
        {/* <Route path="/languages" element={<Languages />} /> */}
        {/* <Route path="/questions" element={QuestionDetails} /> */}
        {/* <Route path="/questions/answers" element={Answers} /> */}
        

      </Routes>
    );
  };