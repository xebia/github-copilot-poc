var builder = WebApplication.CreateBuilder(args);

// Add CORS policy for development
builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.AllowAnyOrigin()
              .AllowAnyMethod()
              .AllowAnyHeader();
    });
});

var app = builder.Build();

// Enable static files and default files
app.UseDefaultFiles();
app.UseStaticFiles();

// Enable CORS
app.UseCors();

// API endpoint
app.MapGet("/api/hello", () => Results.Text("Hello, World!"));

app.Run();

// Make the Program class accessible to tests
public partial class Program { }
