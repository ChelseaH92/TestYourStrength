using Microsoft.AspNetCore.Mvc;
using TestYourStrength.Models;
using TestYourStrength.Repositories;

namespace TestYourStrength.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly IUserRepository _userRepository;

        public UsersController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpGet("{email}")]
        public IActionResult Get(string email)
        {
            var user = _userRepository.GetByEmail(email);
            if (user == null)
            {
                return NotFound();
            }
            return Ok(user);
        }

        [HttpPost]
        public IActionResult Post(Users user)
        {
            _userRepository.Add(user);
            return CreatedAtAction(nameof(Get), new { id = user.Id }, user);
        }

    }
}
