Remove-Item -Path ".\CodeCoverage" -Recurse -Force
dotnet-coverage collect --output-format xml --output .\CodeCoverage\coverage.xml dotnet test CodeCoverageDemo.sln
reportgenerator -reports:.\CodeCoverage\coverage.xml -targetdir:.\CodeCoverage\report