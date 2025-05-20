venv := "ansible/.venv"
venv_path := absolute_path(venv)
venv_bin := venv_path / "bin"

export VIRTUAL_ENV := absolute_path(venv_path)
export PATH := venv_bin + ":" + env_var('PATH')


[private]
default:
    @just --list --justfile {{justfile()}}

[private]
[working-directory: 'ansible']
run_playbook playbook *ARGS:
    {{venv_bin}}/ansible-playbook {{playbook}} {{ARGS}}


# Create the ansible user used for all other playbooks
[group('playbooks')]
ansible *ARGS: (run_playbook "playbook.yml" ARGS)
