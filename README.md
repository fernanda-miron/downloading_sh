

# **Automated file download**

Nextflow pipeline that allows downloading of files in an automated way
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
| [Nextflow] | 21.10.5 | Running pipeline | 

\* These commands must be accessible from your `$PATH` (*i.e.* you
should be able to invoke them from your command line).

### Downloading

Download sh_downloading from Github repository:

    git clone https://github.com/fernanda-miron/downloading_sh.git

------------------------------------------------------------------------

#### Test

To test sh_downloading execution using test data, run:

    nextflow run process-per-csv-record.nf

for each row of the TSV file will be a directory with the downloads

------------------------------------------------------------------------

### Usage

To run with your own data go to the pipeline directory and execute:
 
  nextflow run process-per-csv-record.nf 

------------------------------------------------------------------------

#### Authors

Maria Fernanda Miron T

