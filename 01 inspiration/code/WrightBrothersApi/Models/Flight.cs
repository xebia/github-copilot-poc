using WrightBrothersApi.Models;

public class Flight
{
    public int Id { get; set; }
    public string FlightNumber { get; set; } = string.Empty;
    public string Origin { get; set; } = string.Empty;
    public string Destination { get; set; } = string.Empty;
    public DateTime DepartureTime { get; set; }
    public DateTime ArrivalTime { get; set; }
    public FlightStatus Status { get; set; }
    public int FuelRange { get; set; }

    public bool FuelTankLeak { get; set; }

    public string FlightLogSignature { get; set; } = string.Empty;

    public string AerobaticSequenceSignature { get; set; } = string.Empty;
}

public enum FlightStatus
{
    Scheduled,
    Boarding,
    Departed,
    InAir,
    Landed,
    Cancelled,
    Delayed
}
