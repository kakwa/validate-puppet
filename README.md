# validate-puppet
Small shell script to validate puppet and erb source code

## Usage ##

Help:
```bash
modules/my_module1 » validate-puppet -h
usage: validate-puppet [-h] [-d <directory>]

simple syntax checker for puppet and erb files
arguments:
  -h:             displays this help
  -s:             silent
  -d <directory>: checks .erb and .pp file of <directory>
                  if not specified, checks from current
                  directory (./)

Exit status is the number of corrupted files
if this number is below 254.
254 is used for other errors.
```

Execute in current directory:
```bash
modules/my_module1 » validate-puppet
Syntax of [./manifests/init.pp]                                                   OK
Syntax of [./tests/init.pp]                                                       OK
Syntax check failed for [./templates/tmpl.conf.erb]                               KO
```

Execute in another directory:
```bash
modules/my_module1 » validate-puppet -d ../my_other_module
Syntax of [../my_other_module/manifests/init.pp]                                  OK
Syntax of [../my_other_module/tests/init.pp]                                      OK
```

Quiet output (with 2 files in error):
```bash
modules/my_module1 » validate-puppet -s -d ../my_last_module
modules/my_module1 » echo $?
2
```

## Dependancies ##

This script needs puppet to be installed.

## Installation ##

As root:

```bash
rm -f /usr/local/bin/validate-puppet
curl https://raw.githubusercontent.com/kakwa/validate-puppet/master/validate-puppet \
-o /usr/local/bin/validate-puppet
chmod 755 /usr/local/bin/validate-puppet
#end
```
