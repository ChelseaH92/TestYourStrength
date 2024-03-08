using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class UserRepository : BaseRepository, IUserRepository
    {
        public UserRepository(IConfiguration configuration) : base(configuration) { }

        public List<Users> GetAll()
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT u.Id, u.Email, u.Pass, u.Username, u.Admin
                          FROM Users u";

                    using (var reader = cmd.ExecuteReader())
                    {
                        var users = new List<Users>();
                        while (reader.Read())
                        {
                            users.Add(new Users()
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                                Email = reader.GetString(reader.GetOrdinal("Email")),
                                Pass = reader.GetString(reader.GetOrdinal("Pass")),
                                Username = reader.GetString(reader.GetOrdinal("Username")),
                                Admin = reader.GetBoolean(reader.GetOrdinal("Admin"))
                            });
                        }
                        return users;
                    }
                }
            }

        }
        public Users GetById(int id)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT * FROM Users
                         WHERE Id = @id";

                    DbUtils.AddParameter(cmd, "@id", id);

                    Users userProfile = null;

                    var reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        userProfile = new Users()
                        {
                            Id = DbUtils.GetInt(reader, "Id"),
                            Email = DbUtils.GetString(reader, "Email"),
                            Pass = DbUtils.GetString(reader, "Pass"),
                            Admin = reader.GetBoolean(reader.GetOrdinal("Admin")),
                            Username = DbUtils.GetString(reader, "Username"),
                        };
                    }
                    reader.Close();

                    return userProfile;
                }
            }
        }
        public Users GetByEmail(string email)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                        SELECT * FROM Users
                         WHERE Email = @email";

                    DbUtils.AddParameter(cmd, "@email", email);

                    Users userProfile = null;

                    var reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        userProfile = new Users()
                        {
                            Id = DbUtils.GetInt(reader, "Id"),
                            Email = DbUtils.GetString(reader, "Email"),
                            Pass = DbUtils.GetString(reader, "Pass"),
                            Admin = reader.GetBoolean(reader.GetOrdinal("Admin")),
                            Username = DbUtils.GetString(reader, "Username"),
                        };
                    }
                    reader.Close();

                    return userProfile;
                }
            }
        }

        public void Add(Users userProfile)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"INSERT INTO Users (UserName, Email, Pass, Admin)
                                        OUTPUT INSERTED.ID
                                        VALUES (@Username, @Email, @Pass, @Admin)";
                    DbUtils.AddParameter(cmd, "@UserName", userProfile.Username);
                    DbUtils.AddParameter(cmd, "@Email", userProfile.Email);
                    DbUtils.AddParameter(cmd, "@Pass", userProfile.Pass);
                    DbUtils.AddParameter(cmd, "@Admin", userProfile.Admin);

                    userProfile.Id = (int)cmd.ExecuteScalar();
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
                    cmd.CommandText = "DELETE FROM Users WHERE Id = @Id";
                    DbUtils.AddParameter(cmd, "@id", id);
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public void Update(Users user)
        {
            using (var conn = Connection)
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"
                                UPDATE Users
                                   SET UserName = @UserName,
                                       Email = @Email,
                                       Pass = @Pass,
                                       Admin = @Admin
                                 WHERE Id = @Id";

                    DbUtils.AddParameter(cmd, "@UserName", user.Username);
                    DbUtils.AddParameter(cmd, "@Email", user.Email);
                    DbUtils.AddParameter(cmd, "@Pass", user.Pass);
                    DbUtils.AddParameter(cmd, "@Admin", user.Admin);
                    DbUtils.AddParameter(cmd, "@Id", user.Id);

                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}