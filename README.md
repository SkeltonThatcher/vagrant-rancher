# Vagrant files to create a Rancher server and host environment for local development

## Requirements
* Vagrant
* Virtualbox

## Tested using the following hosts
* Ubuntu 17.04 (Desktop)
* macOS Sierra 10.12.6 (Desktop)

## Usage Instructions

1. Clone the repo
2. Run `vagrant up` from within /server
3. After the instance is launched wait for 3-4 minutes until the Rancher server is up
4. Access the Rancher sever at http://192.168.50.50:8080
5. Go to infrastructure > hosts > add host
6. Accept the default host reg URL
7. Copy the (long) host reg string
8. Update the entry in host.sh with the new token (i.e `08E7A124D98AB02233F1:1483142400000:rBrLKo9bzo1qSZfeu1I3UrsXc8`)
9. Run `vagrant up` from within /host
10. Check the new host has launched and registered in the Rancher server

**Note:** To persist the environment prior to PC or laptop suspend and/or shutdown/reboot:

Either..

- Pause both the server and host nodes from within the Virtualbox UI

Or..

- (Recommended) Issue a `vagrant suspend` for both /server and /host
