# Python Data Science Project Repository
Welcome to the Python Data Science Project Repository! This repository serves as a template and starting point for data science projects implemented in Python. Whether you're forking this repository to start a new project or contributing to an existing one, it provides a structured framework to organize your work.

# Purpose
The purpose of this repository is to streamline the development and collaboration process for Python-based data science projects. It includes common directories, files, and configurations tailored to data science workflows, allowing you to focus on your analysis and modeling tasks without worrying about project setup.


# Table of Contents
1. [Project Structure](#project-structure)
2. [Setup Instructions](#setup-instructions)
   - [Prerequisites](#prerequisites)
   - [Environment Setup](#environment-setup)
3. [Workflow](#workflow)
4. [Main Steps](#main-steps)
5. [Contribution Guidelines](#contribution-guidelines)
6. [Contact](#contact)


# Project Structure

```
base-data-science/         # Root directory
│
├── .bitbucket/            # Directory for Bitbucket-specific configuration
│   └── workflows/         # Directory for Bitbucket Pipelines workflows
│       └── validate.yaml  # Configuration file for validating Bitbucket Pipelines
├── config/                # Directory for project configuration files
│   ├── .conf              # Configuration file
│   ├── .env               # Environment variable file
│   └── README.md          # Documentation for the configuration directory
├── data/                  # Directory for storing data used in the project
│   └── README.md          # Documentation for the data directory
├── docs/                  # Directory for additional project documentation
│   └── README.md          # Documentation for the documentation directory
├── models/                # Directory for model files (not included in final structure)
│   └── README.md          # Documentation for the models.
├── notebooks/             # Directory for Jupyter notebooks (not included in final structure)
├── src/                   # Directory for source code (not included in final structure)
└── tests/                 # Directory for project tests
    ├── README.md          # Documentation for the tests directory
    └── __init__.py        # Initialization script for test directory
├── .gitignore             # Specifies files and directories to ignore by version control
├── Dockerfile             # Dockerfile for containerizing the project
├── Pipfile                # Specifies Python dependencies using pipenv
├── Pipfile.lock           # Lock file generated by pipenv, specifying exact versions of dependencies
├── pyproject.toml         # Configuration file for Python projects
├── README.md              # Documentation providing an overview of the repository and instructions for usage
├── config.py              # Configuration script
├── error.log              # Log file (not included in final structure)
└── main.py                # Main Python script (not included in final structure)
```


# Setup Instructions : 
- Guidelines for setting up the project environment and dependencies.
  
### Prerequisites
- [Python 3.11] (https://www.python.org/downloads/release/python-3110/)
- [Docker] (https://www.docker.com/)

### Environment Setup
Set up your Python environment and install dependencies using `pipenv install` to create a virtual environment and install dependencies from the Pipfile.

#### Step 1: Install pipenv

If you haven't already installed pipenv, you can do so by running:
```sh
pip install pipenv
```

#### Step 2: Install Dependencies

Once pipenv is installed, create a virtual environment and install dependencies from the Pipfile:
```sh
pipenv install
```


## Workflow

- The .bitbucket/workflows/validate.yaml file configures Bitbucket Pipelines to check the Python code after every pushed commit. Modify the pyproject.toml file to adjust commands and rules.

- Setup Pipenv: Installs Pipenv and syncs dependencies, ensuring that the subsequent steps have the required environment set up properly.

- Linting: Using pylint to perform static code analysis and identify potential issues in the codebase. `pipenv run pylint src/ tests/ main.py`

- Formatting: Checking code formatting using Black ensures consistency in code style across the project. The --check option verifies whether the code complies with formatting standards without modifying the files. `pipenv run black --line-length 120 --check .`

- Reformatting: If the code fails the formatting check, the black command without the --check option is executed to automatically reformat the code according to Black's standards. This ensures that the code is consistently formatted. `pipenv run black --line-length 120 .`
  
- Type Checking: Running mypy with the --strict option enforces strict type checking, helping catch potential type-related errors in the codebase. `pipenv run mypy --strict`

- Tests: This step initiates any required services using Docker (if applicable) and then runs tests using pytest. The pytest command generates detailed test reports in JUnit XML format and coverage reports in XML format, which can be useful for analyzing test results and code coverage.
- `pipenv run python main.py`
- `pipenv run pytest -v -s`


## Main Steps
1. **Fork and Clone the Repository**: Fork this repository to start a new project or clone it to your local machine using `git clone`.

2. **Develop Code**: Develop your data preprocessing, modeling, and evaluation code in the `src/` directory.

3. **Run Tests**: Ensure code functionality by running tests located in the `tests/` directory.

4. **Configure CI/CD**: Customize the `bitbucket-pipelines.yml` file to define your CI/CD workflow for automated testing and deployment.

5. **Documentation**: Update the README.md file with project-specific information and usage instructions.

## Contribution Guidelines
Contributions to this repository are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.

## License
This project is licensed under the terms of the [MIT License](LICENSE).

## Contact
For any inquiries or feedback, please contact [Enes Bol] enes2277@gmail.com

Happy forking and starting on your project!
