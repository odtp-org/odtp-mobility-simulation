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

## DETAILS

### PARAMETERS

```
parameters:
  - name: WAIT_TYPE
    default-value: lognormal
    datatype: string
    description: parameters from empirical distribution
    options:
      - lognormal
      - powerlaw
      - truncpowerlaw
    allow-custom-value: false

  - name: WAIT_MU
    default-value: 0.75
    datatype: float
    description: parameters from empirical distribution
    parameter-bounds:
      - 0
      - 1
    options: null
    allow-custom-value: false

  - name: WAIT_SIGMA
    default-value: 1.49
    datatype: float
    description: parameter for lognormal
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: WAIT_ALPHA
    default-value: 1.2
    datatype: float
    description: parameter for both powerlaw (default 1.2) and truncpowerlaw (default 1.1)
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: WAIT_LAMBDA
    default-value: 0.5
    datatype: float
    description: parameters for truncpowerlaw
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: JUMP_TYPE
    default-value: lognormal
    datatype: string
    description: to be developed
    options:
      - lognormal
      - powerlaw
      - truncpowerlaw
    parameter-bounds: null
    allow-custom-value: true

  - name: JUMP_MU
    default-value: 7.72
    datatype: float
    description: parameter for lognormal
    parameter-bounds:
      - 0
      - 10
    allow-custom-value: true

  - name: JUMP_SIGMA
    default-value: 2.38
    datatype: float
    description: parameter for lognormal
    parameter-bounds:
      - 0
      - 10
    allow-custom-value: true

  - name: JUMP_ALPHA
    default-value: 2.38
    datatype: float
    description: parameter for both powerlaw (default 1.2) and truncpowerlaw (default 1.1)
    parameter-bounds:
      - 0
      - 10
    allow-custom-value: true

  - name: JUMP_LAMBDA
    default-value: 0.5
    datatype: float
    description: parameters for truncpowerlaw
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: RHO_TYPE
    default-value: normal
    datatype: string
    description: TBD
    parameter-bounds: null
    allow-custom-value: true

  - name: RHO_MU
    default-value: 0.64
    datatype: float
    description: TBD
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: RHO_SIGMA
    default-value: 0.16
    datatype: float
    description: TBD
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: GAMMA_TYPE
    default-value: normal
    datatype: string
    description: TBD
    parameter-bounds: null
    allow-custom-value: true

  - name: GAMMA_MU
    default-value: 0.18
    datatype: float
    description: TBD
    parameter-bounds:
      - 0
      - 2
    allow-custom-value: true

  - name: GAMMA_SIGMA
    default-value: 0.069
    datatype: float
    description: TBD
    parameter-bounds:
      - 0
      - 1
    allow-custom-value: true

  - name: P
    default-value: 0
    datatype: float
    description: TBD
    parameter-bounds:
      - 0
      - 1
    allow-custom-value: true

```

### Input data

```
data-inputs:
  - name: loc_seq.csv
    type: csv
    path: loc_seq.csv
    description: TBD
  - name: locs.csv
    type: csv
    path: locs.csv
    description: TBD
```

### Output data

```
data-output:
  - name: dtepr.csv
    type: csv
    path: dtepr.csv
    description: TBD
```

## Tutorial

### How to run this component in docker. 

1. Prepare manually a folder called `odtp-input` containing the following datafolder of our selected scenario:

- data

2. Create your `.env` file with this structure.

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



## Changelog

- v0.0.1 
    - Initial relase

## Development. 

Developed by SDSC/CSFM.