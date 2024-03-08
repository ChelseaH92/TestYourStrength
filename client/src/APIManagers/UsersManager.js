
const apiUrl = "https://localhost:5001";
 
export const login = (userObject) => {
  return fetch(`${apiUrl}/api/users/${userObject.email}`)
  .then((r) => r.json())
    .then((userProfile) => {
      if(userProfile.id){
        localStorage.setItem("userProfile", JSON.stringify(userProfile));
        return userProfile
      }
      else {
        return undefined
      }
    });
};

export const getUserByEmail = (email) => {
  return  fetch(`https://localhost:5001/api/Users/GetByEmail/${email}`) 
  .then(response => response.json())  
}

export const getAllUsers = () => {
  return fetch(`${apiUrl}/api/users/`)
  .then((response) => response.json())
}
export const logout = () => {
      localStorage.clear()
};

export const register = (userObject) => {
  return  fetch(`${apiUrl}/api/users`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(userObject),
  })
  .then((response) => response.json())
    .then((savedUserProfile) => {
      localStorage.setItem("userProfile", JSON.stringify(savedUserProfile))
    });
};

export const deleteUser = (id) => {
  return fetch(`${apiUrl}/api/users/${id}`, 
  {
    method: "DELETE"
  })
  .then(getAllUsers)
}

export const updateUser = (userObject) => {
  return fetch(`${apiUrl}/api/users/${userObject.id}`, {
    method: "PUT",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(userObject)
  })
}

export const getUserById = (id) => {
    return  fetch(`https://localhost:5001/api/Users/${id}`) 
    .then(response => response.json())  
  
}