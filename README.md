# Setup My Mac

Automate the Mac setup with all necessary software(s) and tool(s).

### Setup/Install software(s)

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/aditya-mittal/setup-my-mac/master/start.sh)"
```


### Cleanup/Uninstall software(s)

```bash
$ start.sh uninstall
```

All packages are installed with [Homebrew](https://brew.sh/). 
[Here](./roles/setup/vars/main.yml) is the list of all the installables.

## License

* setup-my-mac 
  * The MIT License
* [setupmac](https://github.com/daemonza/setupmac)
  * The MIT License
