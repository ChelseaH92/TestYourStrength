import React, { useState, useEffect } from "react";
import { getAllQuestions } from "../../APIManagers/QuestionsManager";
import { Question } from "./Question";
import { getAllAnswers } from "../../APIManagers/AnswersManager";
import { Answer } from "../Answers/Answer";
// import { QuestionForm } from "./QuestionForm";

const QuestionsList = () => {
  const [questions, setQuestions] = useState([]);

  const [answers, setAnswers] = useState([]);

  const [chosenAnswer, setChosenAnswer] = useState({})

  const [userChoice, setUserChoice] = useState()

  const [correctAnswers, setCorrectAnswers] = useState(0)

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

  const handleAnswerChange = (event, questionIndex) => {
    const selectedAnswerId = parseInt(event.target.value);
    const question = questions.find((q) =>  q?.answerId === selectedAnswerId);
    const correctAnswerId = question?.answerId;
    setUserChoice(selectedAnswerId)

    // if / else I added here in case this breaks it
    if (selectedAnswerId === correctAnswerId) {

      console.log("Correct answer!");
    
    } else {
      console.log(selectedAnswerId)
      console.log(correctAnswerId)
      console.log("Incorrect answer. Please try again.");
    }

    setChosenAnswer({
      ...chosenAnswer,
      [`question${questionIndex + 1}`]: selectedAnswerId,
    });
  };

  const handleSubmit = () => {
    // console.log("Chosen answers:", chosenAnswer);
    console.log(correctAnswers);
  };


  return (
<div className="container">
  <div className="row justify-content-center">
    <div className="cards-column">
    {/* <QuestionForm updateQuestionsState = {getQuestions}/> */}
      {questions.filter(q => q.levelId === strengthUser.levelId && q.languageId === strengthUser.languageId).map((question, index) => (
        <div key={question.id}>
          <Question question={question} userChoice={userChoice} setCorrectAnswers={setCorrectAnswers} correctAnswers={correctAnswers}/>
          {answers.slice(index * 5, index * 5 + 5).map((answer) => (
            <div key={answer.id}>
              <input type="radio" name={`${question.id}`} id={`answer${answer.id}`} value={answer.id}   onChange={(event) =>
                          handleAnswerChange(event, index)
                        }
                      />
              <label htmlFor={`answer${answer.id}`}>{answer.string}</label>
            </div>
          ))}
          {index === 2 && (
                  <button onClick={handleSubmit}>Submit Answers</button>
                )}
        </div>
      ))}
    </div>
  </div>
</div>
  );
};

export default QuestionsList;
