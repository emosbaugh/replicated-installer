#!/bin/bash

#
# This script is meant for quick & easy install of Replicated Studio via:
#   'curl -sSL {{ replicated_install_url }}/studio/swarm | sudo bash'
# or:
#   'wget -qO- {{ replicated_install_url }}/studio/swarm | sudo bash'
#

{% include 'common/common.sh' %}
{% include 'common/prompt.sh' %}
{% include 'common/studio.sh' %}

promptForStudioUrl

echo "Installing Replicated"

curl -sSL "{{ replicated_install_url }}/swarm-init?customer_base_url=${STUDIO_URL}" | sudo bash
