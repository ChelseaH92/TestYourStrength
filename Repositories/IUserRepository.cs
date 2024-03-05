using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface IUserRepository
    {
        void Add(Users users);
        Users GetByEmail(string email);

    }
}