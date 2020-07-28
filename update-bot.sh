#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

jx step create pr docker \
    --name 702769831180.dkr.ecr.ap-south-1.amazonaws.com/702769831180/builder-baseimage \
    --version ${VERSION} \
    --repo https://github.com/rajattyagipvr/jenkins-x-builders-base.git

jx step create pr docker \
    --name 702769831180.dkr.ecr.ap-south-1.amazonaws.com/702769831180/builder-ruby-baseimage \
    --version ${VERSION} \
    --repo https://github.com/rajattyagipvr/jenkins-x-builders-base.git

jx step create pr docker \
    --name 702769831180.dkr.ecr.ap-south-1.amazonaws.com/702769831180/builder-swift-baseimage \
    --version ${VERSION} \
    --repo https://github.com/rajattyagipvr/jenkins-x-builders-base.git
