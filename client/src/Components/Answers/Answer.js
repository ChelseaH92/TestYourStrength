import React from "react";
import { Card, CardBody } from "reactstrap";


export const Answer = ({ answer }) => {
    
    return (
      <Card className="answer-card">
        <CardBody>
          <p>
            {answer.string}
          </p>
          </CardBody>
    </Card>
  );
};