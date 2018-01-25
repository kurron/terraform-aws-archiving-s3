# Overview
This project is a Terraform module that creates a MySQL RDS instance.

# Guidebook
Details about this project are contained in the [guidebook](guidebook/guidebook.adoc) and should be considered mandatory reading prior to contributing to this project.

# Prerequisites
* [Terraform](https://terraform.io/) installed and working
* Development and testing was done on [Ubuntu Linux](http://www.ubuntu.com/)

# Building
Since this is just a collection of Terraform scripts, there is nothing to build.

# Installation
This module is not installed but, instead, is obtained by the project using the module.  See [kurron/terraform-environments](https://github.com/kurron/terraform-environments) for example usage.

# Tips and Tricks

## Debugging
The `debug` folder contains files that can be used to test out local changes to the module.  Edit `backend.cfg` and `plan.tf` to your liking and then run `debug/debug-module.sh` to test your changes.

## Usage
This module, unlike many of my other modules, provides default values for many of the options. I decided to this because I felt it was too cumbersome to expect a user to supply 30+ properties.  Make sure to examine the `variables.tf` to see the full list of configurable options.  Look at `debug/plan.tf` for an example of how to call the module.

# Troubleshooting

# Contributing

# License and Credits
* This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).
* The guidebook structure was created by [Simon Brown](http://simonbrown.je/) as part of his work on the [C4 Architectural Model](https://c4model.com/).  His books can be [purchased from LeanPub](https://leanpub.com/b/software-architecture).
* Patrick Kua offered [his thoughts on a travel guide to a software system](https://www.safaribooksonline.com/library/view/oreilly-software-architecture/9781491985274/video315451.html) which has been [captured in this template](travel-guide/travel-guide.adoc).

# List of Changes
