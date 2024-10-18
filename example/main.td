lazyuwu := import("lazyuwu")

fn main() {
    // Example usage of lazyuwu functions
    result := lazyuwu.math.sin(0.5)
    println("Sin(0.5):", result)

    upperStr := lazyuwu.upper("hello, world!")
    println("Uppercase:", upperStr)

    // Write to a file
    lazyuwu.fs.writeFile("test.txt", "This is a test file.")
    println("File written: test.txt")

    // Read from the file
    fileContent := lazyuwu.fs.readFile("test.txt")
    println("File content:", fileContent)

    // Check if current directory is a directory
    isDir := lazyuwu.fs.isDir(".")
    println("Is current directory:", isDir)

    // Example of exec function
    nodeVersion := lazyuwu.exec.run("node", "--version")
    println("Node version:", nodeVersion)
}

// Call the main function
main()
lazyuwu := import("lazyuwu")

fn main() {
    // Example usage of lazyuwu functions
    result := lazyuwu.math.sin(0.5)
    println("Sin(0.5):", result)

    upperStr := lazyuwu.upper("hello, world!")
    println("Uppercase:", upperStr)

    // Write to a file
    lazyuwu.fs.writeFile("test.txt", "This is a test file.")
    println("File written: test.txt")

    // Read from the file
    fileContent := lazyuwu.fs.readFile("test.txt")
    println("File content:", fileContent)

    // Check if current directory is a directory
    isDir := lazyuwu.fs.isDir(".")
    println("Is current directory:", isDir)

    // Example of exec function
    nodeVersion := lazyuwu.exec.run("node", "--version")
    println("Node version:", nodeVersion)
}

// Call the main function
main()
