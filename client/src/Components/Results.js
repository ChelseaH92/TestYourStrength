import React from 'react';

const Results = ({ chosenAnswers }) => {
  
  const correctAnswerIds = []; 

  const correctCount = chosenAnswers.reduce((count, chosenAnswer, index) => {
    return chosenAnswer === correctAnswerIds[index] ? count + 1 : count;
  }, 0);

  return (
    <div>
      <h2>Results</h2>
      <p>Number of correct answers: {correctCount}</p>
      <p>Total questions: {chosenAnswers.length}</p>
    </div>
  );
};

export default Results; 