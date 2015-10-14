# Preparing a host for devdocs

This playbook assumes you have a python virtual environment installed
in ./venv. Adjust the ./hosts file if you're doing something else.

This playbook assumes you're set up for SSH agent forwarding:
https://developer.github.com/guides/using-ssh-agent-forwarding/

## Setup your environment

1. `cd path/to/ansible-devdocs`
2. `virtualenv venv`
3. `source venv/bin/activate`
4. `pip install -r requirements.txt`
5. `sudo ansible-galaxy install -r ansible-requirements.yml`

## Running the playbook

1. Adjust `iotsp-internal-us-internal.sh-project.sh` as necessary for the CCS
   tenant you intend to use. Source it to set the appropriate OpenStack
   environment variables.
2. Adjust any values in `vars.yml`. The security group should have at least
    ports 22 and 9000 open.
3. Run the playbook:
   ```
   ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook devdocs.xbudev.org.yml -e @vars.yml -i hosts
   ```
