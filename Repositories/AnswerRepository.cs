using Microsoft.Data.SqlClient;
using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class AnswerRepository : BaseRepository, IAnswerRepository
    {
        public AnswerRepository(IConfiguration configuration) : base(configuration) { }

        public List<Answers> GetAll()
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT a.Id, a.String, a.LevelId, a.LanguageId
                          FROM Answers a";

                    using (var reader = cmd.ExecuteReader())
                    {
                        var answers = new List<Answers>();
                        while (reader.Read())
                        {
                            answers.Add(new Answers()
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                                String = reader.GetString(reader.GetOrdinal("String")),
                                LevelId = reader.GetInt32(reader.GetOrdinal("LevelId")),
                                LanguageId = reader.GetInt32(reader.GetOrdinal("LanguageId"))
                            });
                        }
                        return answers;
                    }
                }
            }

        }
        public Answers GetAnswerById(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT a.Id, a.String, a.LevelId, a.LanguageId
                          FROM Answers a";
                    DbUtils.AddParameter(cmd, "@Id", id);

                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return NewAnswerFromReader(reader);
                        }
                    }
                }
            }
            return null;
        }
        private Answers NewAnswerFromReader(SqlDataReader reader)
        {
            return new Answers()
            {
                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                String = reader.GetString(reader.GetOrdinal("String")),
                LevelId = reader.GetInt32(reader.GetOrdinal("LevelId")),
                LanguageId = reader.GetInt32(reader.GetOrdinal("LanguageId"))
            };
        }
        public void Add(Answers answer)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        INSERT INTO Answers (String, LevelId, LanguageId)
                        OUTPUT INSERTED.ID
                        VALUES (@String, @LevelId, @LanguageId)";

                    DbUtils.AddParameter(cmd, "@String", answer.String);
                    DbUtils.AddParameter(cmd, "@LevelId", answer.LevelId);
                    DbUtils.AddParameter(cmd, "@LanguageId", answer.LanguageId);

                    answer.Id = (int)cmd.ExecuteScalar();
                }
            }
        }
        public void Update(Answers answer)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                                UPDATE Answers
                                   SET String = @String,
                                       LevelId = @LevelId,
                                       LanguageId = @LanguageId,
                                 WHERE Id = @Id";

                    DbUtils.AddParameter(cmd, "@String", answer.String);
                    DbUtils.AddParameter(cmd, "@LevelId", answer.LevelId);
                    DbUtils.AddParameter(cmd, "@LanguageId", answer.LanguageId);
                    DbUtils.AddParameter(cmd, "@Id", answer.Id);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void Delete(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = "DELETE FROM Answers WHERE Id = @Id";
                    DbUtils.AddParameter(cmd, "@id", id);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}





