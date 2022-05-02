# Check Review Go Piscine (42 Tokyo)

## Where to place it:
```
Go-Piscine
|-- check.sh                <---- here
|-- GoXX
    |-- ex[XX]
        |-- main.go
        |-- vendor
            |-- ft
            |-- printrune.go
            |-- piscine
                |-- [excercisename].go
```

## Usage:
First source the file to be able to `cd` into other directories:
```sh
source check.sh

```

## Explanation:
You should execute the command like this:
```sh
./check.sh ACTION (e.g. see/edit/run) LESSON (e.g. Go00) EXERCISE (e.g. ex00)

```

## Use Example:
Use `./check.sh see 00 01` (to see Go00's ex01 contents using cat/bat)
Use `./check.sh edit 00 01` (to edit Go00's ex01 using vim)
Use `./check.sh run 00 01` (to run Go00's ex01)
