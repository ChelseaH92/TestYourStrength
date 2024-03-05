using Microsoft.AspNetCore.Mvc;
using TestYourStrength.Repositories;
using TestYourStrength.Models;

namespace TestYourStrength.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TestResultController : ControllerBase
    {
        private readonly ITestResultRepository _testResultsRepository;

        public TestResultController(ITestResultRepository testResultsRepository)
        {
            _testResultsRepository = testResultsRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_testResultsRepository.GetAll());
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var testResults = _testResultsRepository.GetTestResultsById(id);
            if (testResults == null)
            {
                return NotFound();
            }
            return Ok(testResults);
        }

        [HttpGet("GetByUserId/{id}")]
        public IActionResult GetByUserId(int id)
        {
            var testResults = _testResultsRepository.GetTestResultsByUserId(id);
            if (testResults == null)
            {
                return NotFound();
            }
            return Ok(testResults);
        }


        [HttpPost]
        public IActionResult Post(TestResults testResults)
        {
            _testResultsRepository.Add(testResults);
            return CreatedAtAction(nameof(Get), new { id = testResults.Id }, testResults);
        }

    }

}
