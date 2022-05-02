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
First, give the permissions to execute the file:
```sh
chmod u+x check.sh
```

Source the file to be able to `cd` into other directories:
```sh
source check.sh
```

## Explanation:
You should execute the command like this:
```sh
sh check.sh ACTION (e.g. see/edit/run) LESSON (e.g. Go00) EXERCISE (e.g. ex00)

```

## Use Example:

- ### see
Use `sh check.sh see 00 01` (to see Go00's ex01 contents using cat/bat)

![image](https://user-images.githubusercontent.com/48802655/166210395-b6cfe4d5-6a58-409e-b218-f1d6499a5c5f.png)

- ### edit
Use `sh check.sh edit 00 01` (to edit Go00's ex01 using vim)

![image](https://user-images.githubusercontent.com/48802655/166210484-65add3a3-586d-474f-a89b-1ccfc56ed845.png)
![image](https://user-images.githubusercontent.com/48802655/166210443-67532044-009b-42be-8e26-aebaed8fec4a.png)

- ### run
Use `sh check.sh run 00 01` (to run Go00's ex01)

```
💡 There is no need of running go mod init exXX because this command already does it automatically for you!
```

![image](https://user-images.githubusercontent.com/48802655/166210298-3d54b631-42c0-49ee-85c1-8568f4d263d0.png)

