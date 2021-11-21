# Install Nginx on EC2 instance with a test site.

The script allows you to install and configure Nginx on EC2 instances using Ansible.


## Inventory configuration.

Basing on your configuration, edit the inventory file to include your native variables for your environment.

## Edit the contents of the site

Edit the contents of the site at ./site/index.html to match what you want to include in your website.


## Run the Ansible script.

Run the ansible script tp deploy your configuration.

ansible-playbook -i inventory nginx.yml

