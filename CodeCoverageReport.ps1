rm -Path ".\CodeCoverage" -Recurse -Force
dotnet-coverage collect -f xml -o .\CodeCoverage\coverage.xml dotnet test CodeCoverageDemo.sln
reportgenerator -reports:.\CodeCoverage\coverage.xml -targetdir:.\CodeCoverage\report