# odtp-mobility-simulation
ODTP component for running mobility simulation 

| Tool Info | Links |
| --- | --- |
| Original Tool | [https://github.com/irmlma/mobility-simulation](https://github.com/irmlma/mobility-simulation) |
| Current Tool Version | [351ebf85e0872c558d124f502f9a347039042849](https://github.com/irmlma/mobility-simulation/commit/351ebf85e0872c558d124f502f9a347039042849) |


## ODTP command 

```odtp new component 
odtp new odtp-component-entry \
--name odtp-mobility-simulation \
--component-version 0.0.1 \
--repository https://github.com/odtp-org/odtp-mobility-simulation.git
``` 

## Data sheet

### Parameters

| Parameter    | Description                                                                 | Default Value |
|--------------|-----------------------------------------------------------------------------|---------------|
| WAIT_TYPE    | parameters from empirical distribution                                      | lognormal     |
| WAIT_MU      | parameters from empirical distribution                                      | 0.75          |
| WAIT_SIGMA   | parameter for lognormal                                                     | 1.49          |
| WAIT_ALPHA   | parameter for both powerlaw (default 1.2) and truncpowerlaw (default 1.1)   | 1.2           |
| WAIT_LAMBDA  | parameters for truncpowerlaw                                                | 0.5           |
| JUMP_TYPE    | to be developed                                                             | lognormal     |
| JUMP_MU      | parameter for lognormal                                                     | 7.72          |
| JUMP_SIGMA   | parameter for lognormal                                                     | 2.38          |
| JUMP_ALPHA   | parameter for both powerlaw (default 1.2) and truncpowerlaw (default 1.1)   | 2.38          |
| JUMP_LAMBDA  | parameters for truncpowerlaw                                                | 0.5           |
| RHO_TYPE     | TBD                                                                         | normal        |
| RHO_MU       | TBD                                                                         | 0.64          |
| RHO_SIGMA    | TBD                                                                         | 0.16          |
| GAMMA_TYPE   | TBD                                                                         | normal        |
| GAMMA_MU     | TBD                                                                         | 0.18          |
| GAMMA_SIGMA  | TBD                                                                         | 0.069         |
| P            | shall be within [0, 1]; change to non-0 value to perform hard interventions | 0             |
| LOC_SEQ_FILE | Input filename                                                              | loc_seq.csv   |
| LOCS_FILE    | Input filename                                                              | locs.csv      |

### Data Inputs

| File/Folder | Type | Path | Description | Parameter    |
|-------------|------|------|-------------|--------------|
| loc_seq.csv | csv  | null | TBD         | LOC_SEQ_FILE |
| locs.csv    | csv  | null | TBD         | LOCS_FILE    |


### Data Output

| File/Folder | Type | Path       | Description | 
|-------------|------|------------|-------------|
| dtepr.csv   | csv  | dtepr.csv  | TBD         |


## Tutorial

### How to run this component in docker. 

1. Prepare manually a folder called `odtp-input` containing the following datafolder of our selected scenario:

- data

2. Create your `.env` file following the example in `.env.dist`.

3. Build the dockerfile 

```
docker build -t odtp-mobility-simulation .
```

4. Run the following command. Mount the correct volumes for input/output folders. 

```
docker run -it --rm \
-v {PATH_TO_YOUR_INPUT_VOLUME}:/odtp/odtp-input \
-v {PATH_TO_YOUR_OUTPUT_VOLUME}:/odtp/odtp-output \
--env-file .env odtp-mobility-simulation
```

```
docker run -it --rm -v /c/Users/Carlos/pro/odtp-mobility-simulation/odtp-input:/odtp/odtp-input -v /c/Users/Carlos/pro/odtp-mobility-simulation/odtp-output:/odtp/odtp-output --env-file .env odtp-mobility-simulation
```


## Changelog

- v0.0.1 
    - Initial relase

## Development. 

Developed by SDSC/CSFM.