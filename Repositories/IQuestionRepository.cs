using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface IQuestionRepository
    {
        void Add(Questions question);
        void Update(Questions question);
        void Delete(int id);
        List<Questions> GetAll();
        Questions GetQuestionById(int id);
    }
}