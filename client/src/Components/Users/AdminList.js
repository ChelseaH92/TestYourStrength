import React, { useEffect, useState } from "react";
import { Card, CardBody } from "reactstrap";
import { deleteUser, getAllUsers } from "../../APIManagers/UsersManager";
import { AdminCard } from "./AdminCard";


export const AdminList = () => {

    const [usersArray, setUsers ] = useState([])

    const deleteUserbyId = (id) => {
        deleteUser(id).then(() => getUsers())
    }
    const getUsers = () => {
        getAllUsers()
        .then(allUsers => setUsers(allUsers))
    }

    useEffect(() => {
        getUsers();
    }, [])

    return (
    <>
         {usersArray.map((singleUser) => (
            <AdminCard key={singleUser.id} user={singleUser} deleteUserbyId={deleteUserbyId}/>
             ))}
             </>
   
  );
};