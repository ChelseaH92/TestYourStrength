using Microsoft.Data.SqlClient;
using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class LevelRepository : BaseRepository, ILevelRepository
    {
        public LevelRepository(IConfiguration configuration) : base(configuration) { }

        public List<Levels> GetAll()
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT l.Id, l.name
                          FROM Levels l";

                    using (var reader = cmd.ExecuteReader())
                    {
                        var levels = new List<Levels>();
                        while (reader.Read())
                        {
                            levels.Add(new Levels()
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                                Name = reader.GetInt32(reader.GetOrdinal("Name"))
                            });
                        }
                        return levels;
                    }
                }
            }

        }
        public Levels GetLevelsById(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                SELECT l.Id, l.name
                FROM Levels l
                WHERE q.Id = @Id";
                    DbUtils.AddParameter(cmd, "@Id", id);

                     using (var reader = cmd.ExecuteReader())
                     {
                        if (reader.Read())
                        {
                            return NewLevelsFromReader(reader);
                        }
                     }
                }
            }
            return null;
        }
        private Levels NewLevelsFromReader(SqlDataReader reader)
        {
            return new Levels()
            {
                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                Name = reader.GetInt32(reader.GetOrdinal("Name"))
                
            };
        }
    }
}