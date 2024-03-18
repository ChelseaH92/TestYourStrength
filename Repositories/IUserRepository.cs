using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface IUserRepository
    {
        public List<Users> GetAll();
        void Add(Users users);
        Users GetByEmail(string email);
        void Delete(int id);

        void Update(Users user);
        Users GetById(int id);

    }
}