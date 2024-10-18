strings := import("strings")
os := import("os")
math := import("math")
bufio := import("bufio")
color := import("color")

export {
    exec : {
        run : fn(arg0, ...args) {
            cmd := os.exec("node", args...)
            return cmd.output()
        }
    },
    math : {
        sin : math.sin,
        cos : math.cos,
        tan : math.tan,
        asin : math.asin,
        acos : math.acos,
        pow : math.pow,
        abs : math.abs,
        sqrt : math.sqrt
    },
    fs : {
        readFile : fn(name) {
            file := os.read_file(name)
            return file
        },
        writeFile : fn(name, str) {
            file := os.create(name)
            file.write(str)
            file.close()
        },
        appendFile : fn(name, str) {
            file := os.open_file(name, os.o_wronly|os.o_append|os.o_create, 0644)
            file.write_string(str)
            file.close()
        },
        isDir : fn(name) {
            stat := os.stat(name)
            if stat {
                if stat.directory {
                    return true
                }
                return false
            }
            return error(name + " not exists")
        },
        exists : fn(name) {
            if os.stat(name) {
                return true
            }
            return false
        },
        readDir : fn(name) {
            dir := os.open(name)
            return dir.readdirnames(100)
        },
        remove : os.remove,
        removeAll : os.removeAll,
        makeDirAll : fn(name) {
            os.mkdir_all(name, os.mode_perm)
        },
        makeDir : fn(name) {
            os.mkdir(name, 0755)
        }
    },
    readline : bufio.readline,
    split : strings.split,
    upper : strings.to_upper,
    lower : strings.to_lower,
    join : strings.join,
    string : string,
    float : float,
    init : int,
    exit : os.exit,
    args : os.args,
    rune : fn(a) {
        return bytes(a)[0]
    },
    char : char,
    range : range,
    len : len,
    print : print,
    println : println,
    printC : fn(color_name, ...args) {
        color_name = strings.to_lower(color_name)
        str := color[color_name]

        // Check if the color is defined
        if str == null {
            str = "" // Set to empty string if color is not found
        }

        for i, a in args {
            if len(args) - 1 == i {
                str += a
            } else {
                str += a + " "
            }
        }
        str += color.reset
        sysout str // Use sysout to print the string
    },
    printCln : fn(color_name, ...args) {
        color_name = strings.to_lower(color_name)
        str := color[color_name]

        // Check if the color is defined
        if str == null {
            str = "" // Set to empty string if color is not found
        }

        for i, a in args {
            if len(args) - 1 == i {
                str += a
            } else {
                str += a + " "
            }
        }
        str += color.reset + "\n"
        sysout str // Use sysout to print the string with a newline
    }
}
