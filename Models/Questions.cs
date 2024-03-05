namespace TestYourStrength.Models
{
    public class Questions
    {
        public int Id { get; set; }
        public string Question {  get; set; }
        public int AnswerId { get; set; }
        public int LevelId { get; set; }
        public int LanguageId { get; set; }

    }
}
