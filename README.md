# CI presentation

##Requirements

------------
* [virtualBox](https://www.virtualbox.org/wiki/Downloads) >= 4.3.x
* [vagrant](https://www.vagrantup.com/downloads.html) >= 1.6.x

## Getting Started

------------------

1. From inside the project root, run `vagrant up` 
2. You will be prompted for the administration password on your host machine. Obey.
3. Open your hosts file on your host (e.g., `sudo vim /etc/hosts`), and add the following line:
> 10.33.36.12 continuous-integration.dev

4. Visit `continuous-integration.dev` in your browser of choice.

##What just happened?

------------------

This [reveal.js](https://github.com/hakimel/reveal.js/) presentation just built itself inside a wheezy virtualbox. The project itself is being shared inside the project directory between the host and the Virtualbox (a wheezy virtualbox). This means that you can work from your host but in order to get all the goodies needed for CI, you need to be inside the VB.

##How do I work on this?

------------------

1. From inside the project root `vagrant ssh`
2. Navigate to `/var/www/sites/continuous-integration.dev`

* Behat can be invoked with `bin/behat` from the project root.
* The presentation itself can be altered by changing the html markup in `www/index.html`.

##Your mission, if you choose to accept it...

------------------

Your task is to get the test `your-turn.feature` to pass. Once it is passing, commit your changes with git and push up to the remote repository.
