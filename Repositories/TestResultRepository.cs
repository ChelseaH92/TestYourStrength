using Microsoft.Data.SqlClient;
using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class TestResultRepository : BaseRepository, ITestResultRepository
    {
        public TestResultRepository(IConfiguration configuration) : base(configuration) { }

        public List<TestResults> GetAll()
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT tr.Id, tr.Scores, q.LevelId, q.LanguageId, tr.UserId
                          FROM TestResults tr";

                    using (var reader = cmd.ExecuteReader())
                    {
                        var testResults = new List<TestResults>();
                        while (reader.Read())
                        {
                            testResults.Add(new TestResults()
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                                Scores = reader.GetInt32(reader.GetOrdinal("Scores")),
                                LevelId = reader.GetInt32(reader.GetOrdinal("LevelId")),
                                LanguageId = reader.GetInt32(reader.GetOrdinal("LanguageId")),
                                UserId = reader.GetInt32(reader.GetOrdinal("UserId"))
                            });
                        }
                        return testResults;
                    }
                }
            }

        }
        public TestResults GetTestResultsById(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                    SELECT tr.Id, tr.Scores, q.LevelId, q.LanguageId, tr.UserId
                    FROM TestResults tr
                    WHERE tr.Id = @Id";

                    DbUtils.AddParameter(cmd, "@Id", id);

                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return NewTestResultsFromReader(reader);
                        }
                    }
                }
            }
            return null;
        }

        public TestResults GetTestResultsByUserId(int id)
        {
            using (var conn = Connection) 
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                    SELECT tr.Id, tr.Scores, q.LevelId, q.LanguageId, tr.UserId
                    FROM TestResults tr
                    WHERE tr.Id = @Id";

                    DbUtils.AddParameter(cmd, "@Id", id);

                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return NewTestResultsFromReader(reader);
                        }
                    }
                }
            }
            return null;
        }

        private TestResults NewTestResultsFromReader(SqlDataReader reader)
        {
            return new TestResults()
            {
                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                Scores = reader.GetInt32(reader.GetOrdinal("Scores")),
                LevelId = reader.GetInt32(reader.GetOrdinal("LevelId")),
                LanguageId = reader.GetInt32(reader.GetOrdinal("LanguageId")),
                UserId = reader.GetInt32(reader.GetOrdinal("UserId"))
            };
        }
        public void Add(TestResults testResults)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        INSERT INTO TestResults (Scores, LevelId, LanguageId, UserId)
                        OUTPUT INSERTED.ID
                        VALUES (@Scores, @LevelId, @LanguageId, @UserId)";

                    DbUtils.AddParameter(cmd, "@Scores", testResults.Scores);
                    DbUtils.AddParameter(cmd, "@LevelId", testResults.LevelId);
                    DbUtils.AddParameter(cmd, "@LanguageId", testResults.LanguageId);
                    DbUtils.AddParameter(cmd, "@UserId", testResults.UserId);

                    testResults.Id = (int)cmd.ExecuteScalar();
                }
            }
        }
    }
}