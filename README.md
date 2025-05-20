# ansible-anstomlog(1) -- Ansible Stdout Compact Logger

## SYNOPSIS

Much more compact and readable Ansible stdout logger

Comes in two versions: 'anstomlog' and an even more compact version
'anstomlog-tiny' (no 'display_ok_hosts' or 'display_skipped_hosts')

## Features

- one-line display
- mostly pylint compatible
- display tasks content in a nice way
- including UTF-8 strings
- indents structs, displays empty arrays, strings
- put fields on top when
  available `['stdout', 'rc', 'stderr', 'start', 'end', 'msg']`
- removes some fields when
  present `[, 'stdout_lines', '_ansible_verbose_always', '_ansible_verbose_override']`
  to avoid too much clutter
- reverts to standard logger when more than `vv` verbosity
- supports `no_log` attribute in Task
- supports `_ansible_verbose_always` and `_ansible_verbose_override`
- supports multiple items in task (#1)
- multi host support
- correct duration computation
- display duration in minutes when tasks last for more than 1 minute
- diff display support
- displays `stdout` and `stderr` nicely even when they contain `\n`
- displays handlers calls
- Python 2/3 compatible

## Installation

Add `callback_plugins` settings to ansible.cfg:

    [defaults]
    callback_plugins = /path/to/ansible-anstomlog/callbacks

Change stdout_callback to `anstomlog` or `anstomlog-tiny` in ansible.cfg.

Alternatively, you can use the `ANSIBLE_STDOUT_CALLBACK` environment variable.

    ANSIBLE_STDOUT_CALLBACK=anstomlog-tiny ansible-playbook test-1.yml

## License

MIT, see LICENSE file.

## Contributors

- Pierre BAILLET @octplane
- Frédéric COMBES @marthym
- @tterranigma
- @OurFriendIrony
- Farzad FARID @farzy
- Jérôme BAROTIN @jbarotin
- Dale Henries @dalehenries
- Thomas Decaux @ebuildy
