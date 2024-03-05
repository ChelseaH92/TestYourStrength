using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface ILevelRepository
    {
        List<Levels> GetAll();
        Levels GetLevelsById(int id);

    }
}