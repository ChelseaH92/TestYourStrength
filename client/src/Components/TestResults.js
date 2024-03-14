import React, { useEffect, useState } from 'react';
import './TestResults.css'

const TestResults = ({ chosenAnswers }) => {
  
  const [scoreRange, setScoreRange] = useState('');

  const localUser = localStorage.getItem("userProfile");
  const strengthUser = JSON.parse(localUser);

  useEffect(() => {
    document.body.classList.add("loaded");
    calculateMercuryHeight(strengthUser.score);
  }, [strengthUser.score]);

  const calculateMercuryHeight = (score) => {
    const scoreRanges = [
      { label: 'Pathetic', height: 0 },
      { label: 'Puny', height: 25 },
      { label: 'Average', height: 50 },
      { label: 'Jackpot!', height: 100 }
    ];
  
    const range = scoreRanges.find(range => score <= range.height);
  
    setScoreRange(range.label);
  };
  

  return (
    <div style={{ textAlign: "center" }}>
      <h2>Results</h2>
      <p>Number of correct answers: {strengthUser.score}</p>
      <p>Total questions: 3</p>

      <div className="thermometer">
        <div className="thermometer-scale">
        <ul className="mercury">
  <li style={{ height: `${scoreRange.height}%` }}>Jackpot!</li>
  <li style={{ height: `${scoreRange.height - 25}%` }}>Average</li>
  <li style={{ height: `${scoreRange.height - 50}%` }}>Puny</li>
  <li style={{ height: `${scoreRange.height - 75}%` }}>Pathetic</li>
</ul>
        </div>
      </div>
    </div>
  );
};

export default TestResults;
