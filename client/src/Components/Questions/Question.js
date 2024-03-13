import React, { useEffect } from "react";
import { Card, CardBody } from "reactstrap";
import { Link } from "react-router-dom";

export const Question = ({ question, userChoice, setCorrectAnswers, correctAnswers }) => {

  useEffect(() => {
    console.log(userChoice);
    console.log(question?.answerId);
    if (userChoice === question?.answerId) {
      setCorrectAnswers(correctAnswers + 1)
    }
    }, [userChoice])

    return (
      <Card className="m-4">
        <CardBody>
          <p>
            {/* <Link to={`/questions/${question.id}`}> */}
            <strong>{question?.question}</strong>
            {/* </Link> */}
          </p>
          <p>{question.content}</p>
          </CardBody>
    </Card>
  );
};