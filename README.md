# Machine Learning implementation on Embedded FPGA
## Software ML model development
### Basic Setup
Basic setup for software model development only need conda(anaconda/miniconda) and jupyter notebook, where specific dependencied are all in environment.yaml file.
Given that the size of the dataset, working at S3DF is preferable.
### Dataset
The Smart Pixel dataset is available at https://zenodo.org/records/10783560. There is also an available notebook for processing the data into .hdf5 file for easier processing.
### model development
Different model development notebook and existing models are all available at software directory.
## High Level Synthesis
### Basic Setup
Similarly, we have a environment file for setting up the conda environment. A setup.sh script is in HLS directory for you to set up license and GUI in rdsrv machine.
### source code
Source code for synthesis can by found under HLS/src, and all model synthesis part are store in \<\>onChip subdirectories. For CNN, since the RTL code are large, only non-automatic generated part are store in this repo.
## Debugging and other Issues
The scripts are written specifically for myself, compatibilities are added later without any test. Please feel free to contact Kenny Jia through email: hjia625@stanford.edu, or haoyi.jia@cern.ch. I would be happy to help with the debugging process or questions! 

