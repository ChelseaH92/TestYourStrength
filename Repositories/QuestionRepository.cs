using Microsoft.Data.SqlClient;
using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class QuestionRepository : BaseRepository, IQuestionRepository
    {
        public QuestionRepository(IConfiguration configuration) : base(configuration) { }

        public List<Questions> GetAll()
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT q.Id, q.Question, q.AnswerId, q.LevelId, q.LanguageId
                          FROM Questions q";

                    using (var reader = cmd.ExecuteReader())
                    {
                        var questions = new List<Questions>();
                        while (reader.Read())
                        {
                            questions.Add(new Questions()
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                                Question = reader.GetString(reader.GetOrdinal("Question")),
                                AnswerId = reader.GetInt32(reader.GetOrdinal("AnswerId")),
                                LevelId = reader.GetInt32(reader.GetOrdinal("LevelId")),
                                LanguageId = reader.GetInt32(reader.GetOrdinal("LanguageId"))
                            });
                        }
                        return questions;
                    }
                }
            }
        
        }
        public Questions GetQuestionById(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                SELECT q.Id, q.Question, q.AnswerId, q.LevelId, q.LanguageId
                FROM Questions q
                WHERE q.Id = @Id";
                    DbUtils.AddParameter(cmd, "@Id", id);

                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return NewQuestionFromReader(reader);
                        }
                    }
                }
            }
            return null;
        }
        private Questions NewQuestionFromReader(SqlDataReader reader)
        {
            return new Questions()
            {
                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                Question = reader.GetString(reader.GetOrdinal("Question")),
                AnswerId = reader.GetInt32(reader.GetOrdinal("AnswerId")),
                LevelId = reader.GetInt32(reader.GetOrdinal("LevelId")),
                LanguageId = reader.GetInt32(reader.GetOrdinal("LanguageId"))
            };
        }
        public void Add(Questions question)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        INSERT INTO Questions (Question, AnswerId, LevelId, LanguageId)
                        OUTPUT INSERTED.ID
                        VALUES (@Question, @AnswerId, @LevelId, @LanguageId)";

                    DbUtils.AddParameter(cmd, "@Question", question.Question);
                    DbUtils.AddParameter(cmd, "@AnswerId", question.AnswerId);
                    DbUtils.AddParameter(cmd, "@LevelId", question.LevelId);
                    DbUtils.AddParameter(cmd, "@LanguageId", question.LanguageId);

                    question.Id = (int)cmd.ExecuteScalar();
                }
            }
        }
                public void Update(Questions question)
                {
                    using (var conn = Connection)
                    {
                        conn.Open();
                       using (var cmd = conn.CreateCommand())
                       {
                            cmd.CommandText = @"
                                UPDATE Questions
                                   SET Question = @Question,
                                       AnswerId = @AnswerId,
                                       LevelId = @LevelId,
                                       LanguageId = @LanguageId,
                                 WHERE Id = @Id";

                    DbUtils.AddParameter(cmd, "@Question", question.Question);
                    DbUtils.AddParameter(cmd, "@AnswerId", question.AnswerId);
                    DbUtils.AddParameter(cmd, "@LevelId", question.LevelId);
                    DbUtils.AddParameter(cmd, "@LanguageId", question.LanguageId);
                    DbUtils.AddParameter(cmd, "@Id", question.Id);

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
                            cmd.CommandText = "DELETE FROM Questions WHERE Id = @Id";
                            DbUtils.AddParameter(cmd, "@id", id);
                            cmd.ExecuteNonQuery();
                        }
                    }
                }
            }
       }