import React, { useState, useEffect } from "react";
import { getAllAnswers, getAnswersForQuestion } from "../../APIManagers/AnswersManager";
import { Answer } from "./Answer";

const AnswersList = ({ questions, strengthUser }) => {
  const [answers, setAnswers] = useState([]);

  useEffect(() => {
  getAllAnswers()
  .then((theseAnswers) => setAnswers(theseAnswers))
  }, []);

  return (
    <div className="container">
      <div className="row justify-content-center">
        <div className="cards-column">
          {answers.map((answer) => (
            <Answer key={answer.id} answer={answer} />
          ))}
        </div>
      </div>
    </div>
  );
};

export default AnswersList;
