import { useState, useEffect } from "react";
import { addQuestion } from "../../APIManagers/QuestionsManager";
import { useNavigate } from "react-router";


export const QuestionForm = ({updateQuestionsState}) => {
  const localStrengthUser = localStorage.getItem("userProfile");
  const strengthUserObject = JSON.parse(localStrengthUser)  

const navigate = useNavigate();

  const [newQuestion, setNewQuestion] = useState(
        {
            question: "", 
            level: "",
            language: "",
            isApproved: true,
            userProfileId: strengthUserObject.id
        }
    )
    const clickTheSaveButton = (e) => {
        e.preventDefault()

        const newQuestionToSendToAPI = {
            question: newQuestion.question,
            level: newQuestion.content,
            language: newQuestion.imageLocation,
            isApproved: true,
            strengthUserProfileId: strengthUserObject.id}
            
        addQuestion(newQuestionToSendToAPI).then(res => res.json()).then((question) => navigate(`/questions/${question.id}`))

    }
    
    const selectList = (event) => {
        const copy = {
            ...newQuestion
        }
        setNewQuestion(copy)
    }
    
    return (
        <>
         <form className="question-form">
            <h2 className="question-form-new-question">Create a New Question</h2>
            <fieldset>
                    <div className="form-group">
                        <label htmlFor="new-question">New Question:</label>
                        <input
                            type="text"
                            id="question"
                            value={newQuestion.question}
                            onChange={
                                (event) => {
                                    const copy = { ...newQuestion }
                                    copy.question = event.target.value
                                    setNewQuestion(copy)
                                }
                            } />
                    </div>
            </fieldset>

            <fieldset>
                    <div className="form-group">
                        <label htmlFor="answer">Answer:</label>
                        <input
                            type="text"
                            id="answerId"
                            value={newQuestion.content}
                            onChange={
                                (event) => {
                                    const copy = { ...newQuestion }
                                    copy.content = event.target.value
                                    setNewQuestion(copy)
                                }
                            } />
                    </div>
            </fieldset>

    <button
            onClick={(clickEvent) => clickTheSaveButton(clickEvent)} className="btn btn-primary">Save Changes</button>
        </form>
        </>
    )
}