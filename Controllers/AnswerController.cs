using Microsoft.AspNetCore.Mvc;
using TestYourStrength.Repositories;
using TestYourStrength.Models;

namespace TestYourStrength.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AnswerController : ControllerBase
    {
        private readonly IAnswerRepository _answerRepository;

        public AnswerController(IAnswerRepository answerRepository)
        {
            _answerRepository = answerRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_answerRepository.GetAll());
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var answer = _answerRepository.GetAnswerById(id);
            if (answer == null)
            {
                return NotFound();
            }
            return Ok(answer);
        }

        [HttpPost]
        public IActionResult Post(Answers answer)
        {
            _answerRepository.Add(answer);
            return CreatedAtAction(nameof(Get), new { id = answer.Id }, answer);
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, Answers answer)
        {
            if (id != answer.Id)
            {
                return BadRequest();
            }

            _answerRepository.Update(answer);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _answerRepository.Delete(id);
            return NoContent();
        }
    }

}
