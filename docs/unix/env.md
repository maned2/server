# Session

set
```shell
TEST_VAR='Hello World!'
```

get
```shell
set | grep TEST_VAR
printenv | grep TEST_VAR
```

# Environment

set

```shell
export TEST_VAR
```

move from env to shell

```shell
export -n TEST_VAR
```

complete unset

```shell
unset TEST_VAR
```

# for user bash
```
nano ~/.profile

ABC="123"; export ABC
PATH="$PATH:$HOME/go/bin"
```

# system wide
```shell
sudo nano /etc/environment
```