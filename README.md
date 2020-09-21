# Setup My Mac

Automate the Mac setup with all necessary software(s) and tool(s).

It bootstraps MacBook and makes it ready for effectively contributing to project from Day 1. There is no need to download/install any single software or tool manually (not even Git).

It does the following:
- All packages are installed with [Homebrew](https://brew.sh/)
- Installs all needed installables. [Here](./roles/setup/vars/main.yml) is the list.
- Install [tfenv](https://github.com/tfutils/tfenv#usage) for managing different terraform versions
- Install [jenv](https://www.jenv.be/) for managing different java versions
- Sets up zsh as developer friendly shell with command completions, syntax highlighting and auto-suggestions

### Pre-requisites

Nope, none!

### Setup/Install software(s)

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/aditya-mittal/setup-my-mac/master/install.sh)"
```

### Cleanup/Uninstall software(s)

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/aditya-mittal/setup-my-mac/master/uninstall.sh)"
```

### Caveats

The installation/uninstallation of software(s) will prompt for password occassionally, hence will just need a bit of supervision. That is just how Homebrew internally works.


## License

* setup-my-mac 
  * The MIT License
* [setupmac](https://github.com/daemonza/setupmac)
  * The MIT License
