# Managed Prompt

Ansible Role to manage your Bash prompt

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_prompt:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

This role is defined for bash and stored under /etc/profile.d/prompt.sh for all users.

You can create it with [bashcreator.com](http://bashrcgenerator.com/)

Example Playbook #1
```yaml
- name: "configure /etc/profile.d/prompt.sh"
  hosts: all
  roles:
    - role: "managed_prompt"
    managed_prompt:
      enabled: true
      prompt: '\[\033[38;5;33m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;1m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[\033[38;5;214m\]\h\[$(tput sgr0)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;1m\][\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'

```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_prompt
```
