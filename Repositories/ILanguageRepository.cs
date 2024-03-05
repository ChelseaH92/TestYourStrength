using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface ILanguageRepository
    {
        List<Languages> GetAll();
        Languages GetLanguagesById(int id);

    }
}