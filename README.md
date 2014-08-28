Boundary Plugin Shell
=====================

Boundary Plugin Shell is generic plugin that allows the use of any program or scripting language to produce metrics for the Boundary Premium product.

The Boundary Plugin Shell includes:

1. Boundary Plugin Shell
2. Sample Dashboard _Plugin Shell_
3. Example scripts that collect metrics

## Adding the Shell Plugin to Premium Boundary

Installation Plugin

![foo](src/main/resources/plugin_install.png)

## Removing the Shell Plugin from Premium Boundary

![foo](src/main/resources/plugin_uninstall.png)

## Configuration

Once the Shell Plugin is installed a metric to be collected requires configuration. Configuration of a Shell Plugin collected metric requires that a _relay_ is installed. Instructions on how to install a relay for



## Plugin Shell Protocol

Collection of your own defined metric requires a program or script to:

1. Collect, by any means the desired metric
2. Write the collected metric value, along with the metric name, and source to [standard output](http://en.wikipedia.org/wiki/Standard_output) with an accompanying new line.



## Examples
Boundary Shell Plugin bundles several examples that illustrate how to create your metrics using a program or script:

- File System Usage
- Process Count
- Port Scan
- Random
- Windows Power Shell

### File Space Capacity

Collects spaced used of a specified file system as a percentage
#### Metrics
- `BOUNDARY_FILE_SPACE_CAPACITY`

#### Requirements
1. Bash shell
2. Posix utilities: `awk`, `tail`
3. python 2.6.6 or later

#### Configuration

### Process Count

#### Requirements

#### Configuration


### Port Scan

Checks the availability of TCP/IP _port_ on a specified _host_

#### Requirements

#### Configuration

### Random

#### Configuration

### Windows Power Shell

#### Configuration



