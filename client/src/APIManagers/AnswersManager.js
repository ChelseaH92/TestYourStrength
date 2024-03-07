import React from "react";

const baseUrl = '/api/answer';

export const getAllAnswers = () => {
  return fetch(baseUrl) 
    .then((res) => res.json())
};

export const getAnswerById = (id) => {
    return fetch(`${baseUrl}/${id}`)
    .then((res) => res.json())
};

export const getAnswersForQuestion = async (questionId) => {
  try {
    const response = await fetch(`${baseUrl}/${questionId}`);
    if (!response.ok) {
      throw new Error("Failed to fetch answers for the question");
    }
    const data = await response.json();
    return data.answers;
  } catch (error) {
    console.error("Error fetching answers:", error);
    return [];
  }
};

export const addAnswer = (singleAnswer) => { 
    return fetch(baseUrl, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(singleAnswer),
    });
  };