using System.Net;
using Microsoft.AspNetCore.Mvc.Testing;

namespace TicTacToe.Tests;

public class ApiEndpointTests : IClassFixture<WebApplicationFactory<Program>>
{
    private readonly HttpClient _client;

    public ApiEndpointTests(WebApplicationFactory<Program> factory)
    {
        _client = factory.CreateClient();
    }

    [Fact]
    public async Task GetHello_ReturnsHelloWorld()
    {
        // Arrange & Act
        var response = await _client.GetAsync("/api/hello");

        // Assert
        response.EnsureSuccessStatusCode();
        var content = await response.Content.ReadAsStringAsync();
        Assert.Equal("Hello, World!", content);
    }

    [Fact]
    public async Task GetHello_ReturnsPlainText()
    {
        // Arrange & Act
        var response = await _client.GetAsync("/api/hello");

        // Assert
        Assert.Equal("text/plain; charset=utf-8", response.Content.Headers.ContentType?.ToString());
    }
}