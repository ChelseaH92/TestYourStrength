import React, { useState, useEffect } from "react";
import { getAnswerById } from "../../APIManagers/AnswersManager";
import { useParams } from "react-router-dom";
import { Card, CardBody } from "reactstrap";
import { Link } from "react-router-dom";

export const AnswerDetails = () => {
    const [answerDetails, setAnswerDetails] = useState({});
    const { id } = useParams();

    useEffect(() => {
        getAnswerById(id)
            .then((data) =>
            {setAnswerDetails(data);
            })
            .catch((error) => {
                console.log("Error fetching user answers:", error);
            });
    }, [id]);

    const levelId = localStorage.getItem("levelId");
    
    const languageId = localStorage.getItem("languageId");

    const filteredAnswerDetails = {
        ...answerDetails,
        answer: answerDetails?.answer.filter(answer => answer.levelId === levelId && answer.languageId === languageId)
    };

    return (
        <>
        <div className="container">
          <div className="row justify-content-center">
            <div className="col-sm-12 col-lg-6">
            <Card className="m-4">

          <CardBody>
            <p>
            <Link to={`/answers/${filteredAnswerDetails.id}`}>
                <strong>Answers: {filteredAnswerDetails.question}</strong>
            </Link>
            </p>
            <p>{filteredAnswerDetails.content}</p>
            </CardBody>
    </Card>
        </div>
      </div>
    </div>
    </>
    )}