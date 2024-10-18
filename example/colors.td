// Import the lazyuwu package
lazyuwu := import("lazyuwu")

fn main() {
    // Example usage of lazyuwu functions
    // Mathematical function
    result := lazyuwu.math.sin(0.5)
    println("Sin(0.5):", result)

    // String manipulation
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

    // Print colored text
    lazyuwu.printC("red", "This text is red!")
    lazyuwu.printCln("green", "This text is green!")

    // Display a progress bar
    for i := 0; i <= 100; i++ {
        lazyuwu.progressBar(100, i)
        lazyuwu.sleep(50)
    }
}

// Call the main function
main()
