# Setup My Mac

Automate the Mac setup with all necessary software(s) and tool(s).

All packages are installed with [Homebrew](https://brew.sh/). 

It does the following:
- Installs all needed installables. [Here](./roles/setup/vars/main.yml) is the list.
- Install [tfenv](https://github.com/tfutils/tfenv#usage) for managing different terraform versions
- Install [jenv](https://www.jenv.be/) for managing different java versions
- Setup zsh for the user

### Setup/Install software(s)

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/aditya-mittal/setup-my-mac/master/install.sh)"
```

### Cleanup/Uninstall software(s)

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/aditya-mittal/setup-my-mac/master/uninstall.sh)"
```

## License

* setup-my-mac 
  * The MIT License
* [setupmac](https://github.com/daemonza/setupmac)
  * The MIT License
