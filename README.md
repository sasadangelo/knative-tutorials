# Knative Tutorials

This is a set of tutorials I created to start playing with Knative. To run the tutorials I use the [k8s-cluster project](https://github.com/sasadangelo/k8s-cluster) a Vagrant/Vbox Kubernetes cluster running on my laptop.

## Prepare the environment

As first step to run the tutorials, you need to create a Kubernetes cluster on your laptop. To do that, follows the instructions [here](https://github.com/sasadangelo/k8s-cluster).

## Install Knative

Knative is a piece of software composed essentially by 4 components:

* **Istio**, a serving mesh software;
* **Knative serving**, works on top of Istio enhaching its functionality;
* **Tekton**, a source to image pipeline that, starting from KNative 0.8, replaced the build component;
* **Knative Eventing**, manage events.

To install these pieces of software on top of Kubernetes I created a set of scripts in the setup folder. You can install them with the following commands:

```
git clone https://github.com/sasadangelo/knative-tutorials
cd knative-tutorials/setup
./install-istio.sh
./install-serving.sh
./install-eventing.sh
```
