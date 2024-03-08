import React from "react";
import { Card, CardImg, CardBody } from "reactstrap";
import { Link, useNavigate } from "react-router-dom";
import { deleteUser } from "../../APIManagers/UsersManager";

export const AdminCard = ({ deleteUserbyId, user }) => {
 
    const navigate = useNavigate()
    return (
      <Card className="m-4">
        <CardBody>
          <p>
            {/* <Link to={`/questions/${question.id}`}> */}
            <strong>{user.email}</strong>
            {/* </Link> */}
          </p>
          <p>{user.username}</p>
          <button onClick={(e) => deleteUserbyId(user.id)}> Delete </button>
          <button onClick={(e) => navigate(`/admin/edit/${user.id}`)}> Edit </button>

          </CardBody>
    </Card>
  );
};