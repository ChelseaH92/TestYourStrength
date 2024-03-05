using TestYourStrength.Models;
using TestYourStrength.Utils;

namespace TestYourStrength.Repositories
{
    public class UserRepository : BaseRepository, IUserRepository
    {
        public UserRepository(IConfiguration configuration) : base(configuration) { }

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
                    cmd.CommandText = @"INSERT INTO Users (UserName, 
                                                                 Email, Pass, Admin)
                                        OUTPUT INSERTED.ID
                                        VALUES (@Username, 
                                                @Email, @Pass, @Admin)";
                    DbUtils.AddParameter(cmd, "@UserName", userProfile.Username);
                    DbUtils.AddParameter(cmd, "@Email", userProfile.Email);
                    DbUtils.AddParameter(cmd, "@Pass", userProfile.Pass);
                    DbUtils.AddParameter(cmd, "@Admin", userProfile.Admin);

                    userProfile.Id = (int)cmd.ExecuteScalar();
                }
            }
        }
    }
}