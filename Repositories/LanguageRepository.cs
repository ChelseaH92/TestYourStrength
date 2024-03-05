using Microsoft.Data.SqlClient;
using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class LanguageRepository : BaseRepository, ILanguageRepository
    {
        public LanguageRepository(IConfiguration configuration) : base(configuration) { }

        public List<Languages> GetAll()
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT lg.Id, lg.language
                          FROM Languages lg";

                    using (var reader = cmd.ExecuteReader())
                    {
                        var languages = new List<Languages>();
                        while (reader.Read())
                        {
                            languages.Add(new Languages()
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                                Language = reader.GetInt32(reader.GetOrdinal("Languages"))
                            });
                        }
                        return languages;
                    }
                }
            }

        }
        public Languages GetLanguagesById(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                SELECT lg.Id, lg.Languages
                FROM Languages lg
                WHERE q.Id = @Id";
                    DbUtils.AddParameter(cmd, "@Id", id);

                     using (var reader = cmd.ExecuteReader())
                     {
                        if (reader.Read())
                        {
                            return NewLanguagesFromReader(reader);
                        }
                     }
                }
            }
            return null;
        }
        private Languages NewLanguagesFromReader(SqlDataReader reader)
        {
            return new Languages()
            {
                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                Language = reader.GetInt32(reader.GetOrdinal("Languages"))

            };
        }

    }
}