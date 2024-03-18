import { useEffect, useState } from "react";
import { Container, Input, InputGroup, Button } from "reactstrap";
import { useNavigate, useParams } from "react-router-dom";
import { getUserById, updateUser } from "../../APIManagers/UsersManager";

export const EditUser = () => {
    const [user, setUser] = useState({
        email: "",
        pass: "",
        username: ""
    });
    const navigate = useNavigate();
    const { id } = useParams()
    useEffect(() => {
        getUserById(id)
            .then((data) => {
                setUser(data)
            })
        }, [id])

    const handleSubmit = (e) => {
        return updateUser(user).then(() => navigate("/admin"));
    };
    return (
        <Container>
            <InputGroup>
                <Input
                    placeholder='email'
                    value={user.email}
                    onChange={(e) => {
                        const copy = { ...user };
                        copy.email = e.target.value;
                        setUser(copy);
                    }}
                />
                  <Input
                    placeholder='pass'
                    value={user.pass}
                    onChange={(e) => {
                        const copy = { ...user };
                        copy.pass = e.target.value;
                        setUser(copy);
                    }}
                />
                  <Input
                    placeholder='username'
                    value={user.username}
                    onChange={(e) => {
                        const copy = { ...user };
                        copy.username = e.target.value;
                        setUser(copy);
                    }}
                />
                <Button color='primary' onClick={(e) => handleSubmit(e)}>Save</Button>
            </InputGroup>
        </Container>
    );
};