import React from "react";

const baseUrl = '/api/Question';

export const getAllQuestions = () => {
  return fetch(baseUrl) 
    .then((res) => res.json())
};

export const getQuestionById = (id) => {
    return fetch(`${baseUrl}/${id}`)
    .then((res) => res.json())
};

export const addQuestion = (singleQuestion) => { 
    return fetch(baseUrl, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(singleQuestion),
    });
  };