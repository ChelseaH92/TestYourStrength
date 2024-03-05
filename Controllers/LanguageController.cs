using Microsoft.AspNetCore.Mvc;
using TestYourStrength.Repositories;
using TestYourStrength.Models;

namespace TestYourStrength.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LanguageController : ControllerBase
    {
        private readonly ILanguageRepository _languageRepository;

        public LanguageController(ILanguageRepository LanguageRepository)
        {
            _languageRepository = LanguageRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_languageRepository.GetAll());
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var language = _languageRepository.GetLanguagesById(id);
            if (language == null)
            {
                return NotFound();
            }
            return Ok(language);
        }
    }
}