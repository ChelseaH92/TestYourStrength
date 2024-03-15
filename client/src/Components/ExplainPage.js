import React from 'react';
import { Container, Row, Col } from 'reactstrap';
import './ExplainPage.css'

const ExplainPage = () => {
  const cefrLevels = [
    { level: 'A1', meaning: 'Beginner', explanation: 'Can understand and use familiar everyday expressions and very basic phrases aimed at the satisfaction of needs of a concrete type.' },
    { level: 'A2', meaning: 'Elementary', explanation: 'Can communicate in simple and routine tasks requiring a simple and direct exchange of information on familiar and routine matters.' },
    { level: 'B1', meaning: 'Intermediate', explanation: 'Can understand the main points of clear standard input on familiar matters regularly encountered in work, school, leisure, etc.' },
    { level: 'B2', meaning: 'Upper Intermediate', explanation: 'Can understand the main ideas of complex text on both concrete and abstract topics, including technical discussions in their field of specialization.' },
    { level: 'C1', meaning: 'Advanced', explanation: 'Can understand a wide range of demanding, longer texts, and recognize implicit meaning.' },
    { level: 'C2', meaning: 'Proficiency', explanation: 'Can understand with ease virtually everything heard or read.' },
  ];

  return (
    <Container className="explain-page">
      <h1>What Do These Acronyms Mean?</h1>
      <Row>
        {cefrLevels.map((level, index) => (
          <Col md={6} key={index}>
            <div className="level-box">
              <h2>{level.level}</h2>
              <p><strong>{level.meaning}</strong></p>
              <p>{level.explanation}</p>
            </div>
          </Col>
        ))}
      </Row>
    </Container>
  );
};

export default ExplainPage;
