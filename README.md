

# **Automated file download**

Bash script that allows downloading of files in an automated way
given a TSV file with links
Version: 1.0

------------------------------------------------------------------------

## Requirements

#### Compatible OS\*:

-   [Ubuntu 18.04 ](http://releases.ubuntu.com/18.04/)

#### Software:

|                    Requirement                     |          Version           |  Required Commands \*  |
|:--------------------------------------------------:|:--------------------------:|:----------------------:|
|        [curl]        |         -         |        curl        |

\* These commands must be accessible from your `$PATH` (*i.e.* you
should be able to invoke them from your command line).

### Downloading

Download sh_downloading from Github repository:

    git clone https://github.com/fernanda-miron/downloading_sh.git

------------------------------------------------------------------------

#### Test

To test sh_downloading execution using test data, run:

    bash script.sh corrected.tsv

for each row of the TSV file will be a directory with the downloads

------------------------------------------------------------------------

### Usage

To run with your own data go to the pipeline directory and execute:
 
  bash script.sh your_tsv

------------------------------------------------------------------------

#### Authors

Maria Fernanda Miron T

