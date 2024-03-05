using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface IAnswerRepository
    {
        void Add(Answers answer);
        void Delete(int id);
        List<Answers> GetAll();
        Answers GetAnswerById(int id);
        void Update(Answers answer);

    }
}