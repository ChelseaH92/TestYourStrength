import React from "react";
import { Card, CardImg, CardBody } from "reactstrap";
import { Link } from "react-router-dom";

export const Question = ({ question }) => {
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