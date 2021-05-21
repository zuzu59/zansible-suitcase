#!/bin/bash
# démarre le suitecase de domq pour faire des tests rapide d'Ansible
# zf200929.1723, zf210521.0757

platform_check () {
    if ! test -f ansible-deps-cache/.versions 2>/dev/null; then
        curl https://raw.githubusercontent.com/epfl-si/ansible.suitcase/master/install.sh | \
            SUITCASE_DIR=$PWD/ansible-deps-cache \
            SUITCASE_PIP_EXTRA="bcrypt passlib" \
            SUITCASE_ANSIBLE_REQUIREMENTS=requirements.yml \
            SUITCASE_ANSIBLE_VERSION=3.1 \
            bash -x
    fi
    export PATH="$PWD/ansible-deps-cache/bin:$PATH"
    export ANSIBLE_ROLES_PATH="$PWD/ansible-deps-cache/roles"
}

set -e
platform_check

bash --rcfile <(echo '. ~/.bashrc; unset PROMPT_COMMAND; PS1="SUITCASE, $PS1"') -i
