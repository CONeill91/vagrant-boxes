#!/bin/bash

readonly sha256_hash="925f5b9a8c536393ba6ba94788b71d8a61bdf31cfc9b1a76657f1e22d0bcd746  openvpn-as-2.5.2-Ubuntu16.amd_64.deb"
readonly download_url="http://swupdate.openvpn.org/as/openvpn-as-2.5.2-Ubuntu16.amd_64.deb"
readonly package_name="openvpn-as-2.5.2-Ubuntu16.amd_64.deb"
apt-get update

wget $download_url

# verify checksum
test "$sha256_hash" == "$(sha256sum $package_name)" || {
        echo "Hashes didn't match - exiting..";
        exit 1 
    }

# install the package
dpkg -i $package_name
