using FluentAssertions;

namespace CalculatorLibrary.Tests.Unit;

public class CalculatorTests
{
    private readonly Calculator _sut = new();

    [Theory]
    [InlineData(0, 0, 0)]
    [InlineData(5, 5, 10)]
    [InlineData(-5, 5, 0)]
    [InlineData(-15, -5, -20)]
    public void Add_ShouldAddTwoNumbers_WhenTwoNumbersAreIntegers(int a, int b, int expected)
    {
        // Act
        var result = _sut.Add(a, b);

        // Assert
        result.Should().Be(expected);
    }
}