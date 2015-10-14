# Preparing a host for devdocs

This playbook assumes you have a python virtual environment installed
in ./venv. Adjust the ./hosts file if you're doing something else.

You'll need an account set up on http://gitlab.xbudev.org and to add your public
ssh key to it. You also need to be a user on our AWS account because the
playbook creates a DNS record.

1. `cd path/to/ansible-devdocs`
2. `virtualenv venv`
3. `source venv/bin/activate`
4. `pip install -r requirements.txt`
5. `sudo ansible-galaxy install -r ansible-requirements.yml`
6. Adjust `iotsp-internal-us-internal.sh-project.sh` as necessary for the CCS
   tenant you intend to use.
7. Adjust any values in `vars.yml`
8. `ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook devdocs.xbudev.org.yml -e @vars.yml -i hosts`
