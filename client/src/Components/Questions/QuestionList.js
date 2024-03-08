import React, { useState, useEffect } from "react";
import { getAllQuestions } from "../../APIManagers/QuestionsManager";
import { Question } from "./Question";
import { getAllAnswers } from "../../APIManagers/AnswersManager";
import { Answer } from "../Answers/Answer";
// import { QuestionForm } from "./QuestionForm";

const QuestionsList = () => {
  const [questions, setQuestions] = useState([]);

  const [answers, setAnswers] = useState([]);

  useEffect(() => {
  getAllAnswers()
  .then((theseAnswers) => {
    let filteredAnswers = theseAnswers.filter((a) => a.languageId === strengthUser.languageId && a.levelId === strengthUser.levelId)

    setAnswers(filteredAnswers)

  })
  }, []);

  const getQuestions = () => {
      getAllQuestions().then(allQuestions => setQuestions(allQuestions)); 
  };
  const localUser = localStorage.getItem("userProfile")
  const strengthUser = JSON.parse(localUser)

  useEffect(() => {
    getQuestions();
  }, []); 

  return (
<div className="container">
  <div className="row justify-content-center">
    <div className="cards-column">
    {/* <QuestionForm updateQuestionsState = {getQuestions}/> */}
      {questions.filter(q => q.levelId === strengthUser.levelId && q.languageId === strengthUser.languageId).map((question, index) => (
        <div key={question.id}>
          <Question question={question} />
          {answers.slice(index * 5, index * 5 + 5).map((answer) => (
            <div key={answer.id}>
              <input type="radio" name={`question${index + 1}`} id={`answer${answer.id}`} value={answer.id} />
              <label htmlFor={`answer${answer.id}`}>{answer.string}</label>
            </div>
          ))}
        </div>
      ))}
    </div>
  </div>
</div>
  );
};

export default QuestionsList;
