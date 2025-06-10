# RateLimiter Project

This project implements a Rate Limiter using C++ and Data Structures & Algorithms (DSA). Below is the structure of the project directory:

## Directory Structure

```
/RateLimiter
├── include/         # Header files
├── src/             # Source code 
└── readme.md        # Project documentation
```

### Folders and Files

1. **include/**  
    Contains all the header files for the project. These files define the interfaces and data structures used in the Rate Limiter.

2. **src/**  
    Contains the implementation of the Rate Limiter logic and other supporting functionalities.


5. **readme.md**  
    The current documentation file, providing an overview of the project.

## How to Build

1. Ensure you have a C++ compiler installed (e.g., `g++`).
2. Navigate to the project directory.
3. Run the following commands:
    ```bash
    mkdir build
    cd build
    cmake ..
    make
    ```

## How to Run

After building the project, you can run the executable generated in the `build/` directory:
```bash
./RateLimiterExecutable
```

## How to Test

To run the unit tests:
```bash
cd build
ctest
```

## Features

- Configurable request limits and time intervals.
- Thread-safe implementation for concurrent environments.

## Requirements

- C++17 or later
- CMake 3.10 or later

## Contributing

Feel free to fork the repository, make changes, and submit a pull request. Ensure all tests pass before submitting.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.