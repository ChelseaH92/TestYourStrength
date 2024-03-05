using TestYourStrength.Models;

namespace TestYourStrength.Repositories
{
    public interface ITestResultRepository
    {
        void Add(TestResults testResults);
        List<TestResults> GetAll();
        TestResults GetTestResultsById(int id);
        TestResults GetTestResultsByUserId(int id);

    }
}