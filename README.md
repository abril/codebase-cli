# Codebase Command Line Interface

Command utilty to open codebase repositories in your browser

## Install

    $ gem install codebase-cli

## Usage

#### Enter the repository folder
    $ cd <CODEBASE_REPOSITORY>

#### open the repository homepage
    $ cb

#### open the specified file
    $ cb <file>
    
#### open the specified object(commit, tag, branch)
    $ cb -r <object>

#### open the specified branch
    $ cb -b <branch>

#### compare commits
    $ cb -c <object1> [<object2>] # object2 is optional ('master' as default)
	 
## Authors

* [Lucas Fais](https://github.com/lucasfais)
