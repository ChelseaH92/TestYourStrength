using Microsoft.AspNetCore.Mvc;
using TestYourStrength.Repositories;
using TestYourStrength.Models;

namespace TestYourStrength.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QuestionController : ControllerBase
    {
        private readonly IQuestionRepository _questionRepository;
    
        public QuestionController(IQuestionRepository questionRepository)
        {
            _questionRepository = questionRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_questionRepository.GetAll());
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var question = _questionRepository.GetQuestionById(id);
            if (question == null)
            {
                return NotFound();
            }
            return Ok(question);
        }

        [HttpPost]
        public IActionResult Post(Questions question)
        {
            _questionRepository.Add(question);
            return CreatedAtAction(nameof(Get), new { id = question.Id }, question);
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, Questions question)
        {
            if (id != question.Id)
            {
                return BadRequest();
            }

            _questionRepository.Update(question);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _questionRepository.Delete(id);
            return NoContent();
        }
    }
}
