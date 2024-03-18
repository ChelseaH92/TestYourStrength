import React, { useState, useEffect } from "react";
import { getQuestionById } from "../../APIManagers/QuestionsManager";
import { useParams } from "react-router-dom";
import { Card, CardBody } from "reactstrap";
import { Link } from "react-router-dom";

export const QuestionDetails = () => {
    const [questionDetails, setQuestionDetails] = useState({});
    const { id } = useParams();

    useEffect(() => {
        getQuestionById(id)
            .then((data) =>
            {setQuestionDetails(data);
            })
            .catch((error) => {
                console.log("Error fetching user questions:", error);
            });
    }, [id]);

    const levelId = localStorage.getItem("levelId");
    const languageId = localStorage.getItem("languageId");

    const filteredQuestionDetails = {
        ...questionDetails,
        question: questionDetails?.question.filter(question => question.levelId === levelId && question.languageId === languageId)
    };

    return (
        <>
        {console.log(id)}
        <div className="container">
          <div className="row justify-content-center">
            <div className="col-sm-12 col-lg-6">
            <Card className="m-4">

          <CardBody>
            <p>
            <Link to={`/questions/${filteredQuestionDetails.id}`}>
                <strong>Question: {filteredQuestionDetails.question}</strong>
            </Link>
            </p>
            <p>{filteredQuestionDetails.content}</p>
            </CardBody>
    </Card>
        </div>
      </div>
    </div>
    </>
    )}