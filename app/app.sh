#!/bin/bash

############################################################################################
# START OF MANUAL CONFIGURATION. 
# ADAPT THE TEMPLATE HERE.
############################################################################################

#########################################################
# 1. GITHUB CLONING OF REPO
# Clone the repository of your tool and checkout to one specific commit. 
#########################################################

git clone https://github.com/irmlma/mobility-simulation.git /odtp/odtp-workdir/irmlma

cd /odtp/odtp-workdir/irmlma
git checkout c71bc65641cbd5aae2db9bfaa3b4afa3690e47c7

pip install -e .


#########################################################
# 2. CONFIG FILE CONFIGURATION
# Read placeholders and create config file from Environment  
#########################################################


#python3 $HOME/code/python/odtp1/odtp-workdir/irmlma/parameters.py $HOME/code/python/odtp1/odtp-workdir/irmlma/app/config_templates/template.yml $HOME/code/python/odtp1/odtp-workdir/irmlma/config.yml
echo "Running the mobsim PIPELINE"

python3 /odtp/odtp-app/odtp-workdir/parameters.py /odtp/odtp-app/config_templates/template.yml /odtp/odtp-workdir/config.yml
#########################################################
# 3. INPUT FOLDER MANAGEMENT
#########################################################

#ln -s /odtp/odtp-input/... /odtp/odtp-workdir/...

#########################################################
# 4. TOOL EXECUTION
# While the output is managed by ODTP and placed in /odtp/odtp-output/
#########################################################

# COMMAND $PARAMETER_A #PARAMETER_B /odtp/odtp-input/data

#########################################################
# COMMAND TO RUN THE TOOL
#########################################################

# A3 - Run the tool
# While the output is managed by ODTP and placed in /odtp/odtp-output/


python3 mobsim/scripts/run.py


#########################################################
# 5. OUTPUT FOLDER MANAGEMENT
# The selected output files generated should be placed in the output folder
#########################################################

cp -r /odtp/odtp-workdir/mobility_simulation/data/output/ /odtp/odtp-output

############################################################################################
# END OF MANUAL USER APP
############################################################################################
