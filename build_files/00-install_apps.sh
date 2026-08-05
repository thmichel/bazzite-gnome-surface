#!/bin/bash

set -euxo pipefail

# install surface dnf repo
#

dnf5 config-manager addrepo --from-repofile="/ctx/linux-surface.repo" -y


# this installs a package from fedora repos
#
PACKAGES=(
        wireshark
        java-latest-openjdk
        plocate
        iptsd
)

dnf5 install -y "${PACKAGES[@]}" --skip-unavailable

