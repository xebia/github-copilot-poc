namespace WrightBrothersApi.Models
{
    public class Plane
    {
        public int Id { get; set; }

        public string Name { get; set; } = string.Empty;

        public int Year { get; set; }

        public string Description { get; set; } = string.Empty;

        public int RangeInKm { get; set; }

        public DateTime LastUpdated { get; set; }
    }
}
