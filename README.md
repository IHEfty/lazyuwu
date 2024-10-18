# lazyuwu

**lazyuwu** is a utility package designed for the [**Tender**](https://github.com/2dprototype/tender-free) programming language, offering a suite of functions to streamline mathematical computations, string manipulations, file operations, and console text formatting. Its primary goal is to enhance developer productivity and simplify common tasks in the Tender environment.

## Features

- **Mathematical Functions**: Perform essential mathematical operations, including sine, cosine, and exponentiation.
- **String Manipulation**: Convert strings to uppercase, split strings, and join multiple strings with ease.
- **File Operations**: Read from and write to files, append content, and verify file and directory statuses.
- **Colored Text Printing**: Output text in various colors to improve console visibility and enhance user experience.

## Installation Steps

Follow these steps to set up the `lazyuwu` package in your Tender environment:

1. **Download Tender**: 
   - Download the Tender programming language from the [Tender GitHub repository](https://github.com/2dprototype/tender-free).

2. **Install Tender**: 
   - Extract the downloaded package and navigate to the folder.

3. **Upload `lazyuwu` and `color.td`**: 
   - Place the `lazyuwu` and `color.td` files in the `pkg` directory of your Tender installation. The directory structure should look like this:

   ```
   ├───bin
   │   └───tender.exe
   └───pkg
       │   ansi.td
       │   cinf.td
       │   console.td
       │   enum.td
       │   fs.td
       │   matrix.td
       │   messagebox.td
       │   utf8.td
       │   vec2.td
       │   xml.td
       │   lazyuwu.td
       │   color.td
       └───helper

   ```

4. **Import the Package**: 
   - To incorporate the `lazyuwu` package into your Tender project, simply import it as follows:

   ```tender
   lazyuwu := import("lazyuwu")
   ```

## Usage Examples

### Basic Functions

The following examples demonstrate how to utilize the core functionalities provided by the `lazyuwu` package.

#### Mathematical Functions Example

```tender
lazyuwu := import("lazyuwu")

fn main() {
    // Calculate and print the sine of 0.5
    result := lazyuwu.math.sin(0.5)
    println("Sin(0.5):", result)

    // Convert a string to uppercase
    upperStr := lazyuwu.upper("hello, world!")
    println("Uppercase:", upperStr)

    // Write content to a file
    lazyuwu.fs.writeFile("test.txt", "This is a test file.")
    println("File written: test.txt")

    // Read content from the file
    fileContent := lazyuwu.fs.readFile("test.txt")
    println("File content:", fileContent)

    // Check if the current directory is indeed a directory
    isDir := lazyuwu.fs.isDir(".")
    println("Is current directory:", isDir)

    // Execute a command to get the Node.js version
    nodeVersion := lazyuwu.exec.run("node", "--version")
    println("Node version:", nodeVersion)
}

// Execute the main function
main()
```

### Colored Text Printing Example

The `lazyuwu` package enables you to print colored text effortlessly.

```tender
lazyuwu := import("lazyuwu")

fn main() {
    // Print colored text using printC
    lazyuwu.printC("red", "This text is red!")
    lazyuwu.printC("green", "This text is green!")
    lazyuwu.printC("blue", "This text is blue!")
    lazyuwu.printC("yellow", "This text is yellow!")

    // Print colored text with a newline using printCln
    lazyuwu.printCln("magenta", "This text is magenta and ends with a newline.")
    lazyuwu.printCln("cyan", "This text is cyan and also ends with a newline.")

    // Print a message with multiple parts in blue
    lazyuwu.printCln("blue", "This is a", "blue", "message with", "multiple parts!")
}

// Execute the main function
main()
```

## License

This project is licensed under the MIT License. For details, please refer to the [LICENSE](LICENSE) file.

## Contributing

Contributions to the `lazyuwu` package are welcome! If you have suggestions for new features, improvements, or bug fixes, please feel free to open an issue or submit a pull request.
