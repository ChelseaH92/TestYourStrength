using Microsoft.AspNetCore.Mvc;
using TestYourStrength.Repositories;
using TestYourStrength.Models;

namespace TestYourStrength.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LevelController : ControllerBase
    {
        private readonly ILevelRepository _levelRepository;

        public LevelController(ILevelRepository LevelRepository)
        {
            _levelRepository = LevelRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_levelRepository.GetAll());
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var level = _levelRepository.GetLevelsById(id);
            if (level == null)
            {
                return NotFound();
            }
            return Ok(level);
        }
    }
}