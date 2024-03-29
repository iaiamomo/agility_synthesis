:: This script uses the 'openapi-python-client' tool to generate a Python HTTP client from OpenAPI specification.

:: remove previous output if any
echo y|rmdir /s industrial-api-client
echo y|rmdir /s ../client

:: generate new client
openapi-python-client generate --path ../spec.yml

:: move generate Python package as a subpackage of ours
move industrial-api-client/industrial_api_client ../client

:: remove temporary output
echo y|rmdir /s industrial-api-client
