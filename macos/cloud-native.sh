#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Install cloud native tools
brew install kubectl
brew install minikube
brew install kustomize
brew install helm
brew install kind
brew install kn

brew install knative-sandbox/kn-plugins/quickstart

# https://github.com/istio/istio
# https://github.com/argoproj/argo-cd
# https://github.com/argoproj/argo-workflows
# https://github.com/kubesphere/kubesphere