import React from 'react';
import { Container, Row, Col } from 'reactstrap';

const ExplainPage = () => {
  const cefrLevels = [
    { level: 'A1', meaning: 'Beginner' },
    { level: 'A2', meaning: 'Elementary' },
    { level: 'B1', meaning: 'Intermediate' },
    { level: 'B2', meaning: 'Upper Intermediate' },
    { level: 'C1', meaning: 'Advanced' },
    { level: 'C2', meaning: 'Proficiency' },
  ];

  return (
    <Container className="explain-page">
      <h1>What Do These Acronyms Mean?</h1>
      <Row>
        <Col md={6}>
          <h2>CEFR Levels</h2>
          <ul>
            {cefrLevels.map((level, index) => (
              <li key={index}>
                <strong>{level.level}</strong>: {level.meaning}
              </li>
            ))}
          </ul>
        </Col>
      </Row>
    </Container>
  );
};

export default ExplainPage;
