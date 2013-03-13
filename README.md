Verifi
======

The system verification tool

What is Verifi?
---------------

Verifi is meant to ease systems managers answering the question "What's where?". From what version of an application is deployed to an environment to configuration management, the task of wrangling up 10's or 100's (or more!) of machines that make up a system and ensuring they all match the desired state has been an exhausting one. Verifi aims to allow you as the user to define your system once and Verifi that all your machines match the desired state

What kind of things can I Verifi?
---------------------------------

Verifi works off of the idea of "verifiers" and "workers". Workers define the logic of interacting with one or more machines (Ex. SSH worker, Cloud Foundry worker), and Verifiers define how to check for different criteria (Does this file exist? What version of this application is running here? What is this configuration setting?).

How do I add a verifier or a worker?
------------------------------------

That's why it's open source :)