import React, { useEffect, useState } from 'react';
import './TestResults.css'

const TestResults = ({ chosenAnswers }) => {
  
  const [scoreRange, setScoreRange] = useState({});

  const localUser = localStorage.getItem("userProfile");
  const strengthUser = JSON.parse(localUser);

  useEffect(() => {
    document.body.classList.add("loaded");
    calculateMercuryHeight(strengthUser.score);
  }, [strengthUser.score]);

  const calculateMercuryHeight = (score) => {
    score = Math.floor(score / 3 * 100) 
    const scoreRanges = [
      { label: 'Pathetic', height: 0 },
      { label: 'Puny', height: 33 },
      { label: 'Average', height: 66 },
      { label: 'Jackpot!', height: 100 }
    ];
  
    const range = scoreRanges.find(range => score <= range.height);
  
    setScoreRange(range);
  };
  

  return (
    <div style={{ textAlign: "center" }}>
      {console.log(scoreRange)}
      <h2>Results</h2>
      <p>Number of correct answers: {strengthUser.score}</p>
      <p>Total questions: 3</p>

      <div className="thermometer">
        <div className="thermometer-scale">
        <ul className="mercury">
{
   strengthUser.score === 3 ?      
  <li style={{ height: `40vh` }}>Jackpot!</li>
  : strengthUser.score === 2 ?
  <li style={{ height: `25vh` }}>Average</li>
  : strengthUser.score === 1 ?
  <li style={{ height: `15vh`, width: "60px" }}>Puny</li>
  :
  <li style={{ height: `3vh` }}>Pathetic</li>
}
  </ul>
        </div>
      </div>
    </div>
  );
};

export default TestResults;
