Boundary Plugin Shell
=====================

Boundary Plugin Shell is generic plugin that allows the use of any program or scripting language to produce metrics for the Boundary Premium product.

The Boundary Plugin Shell includes:

1. Boundary Plugin Shell
2. Sample Dashboard _Plugin Shell_
3. Example scripts that collect metrics

## Adding the Shell Plugin to Premium Boundary

1. Login into Boundary Premium
2. Display the settings dialog by clicking on the _settings icon_: ![](src/main/resources/settings_icon.png)
3. Click on the _Plugins_ in the settings dialog: ![](src/main/resources/settings_plugins_dialog.png)

4. Local the _boundary\_plugin\_shell_ and click on the _Install_ button.
![foo](src/main/resources/plugins_available.png)

5. A confirmation dialog is displayed indicating the plugin was installed sucessfull along with the metrics and the dashboards that were configure:
![foo](src/main/resources/plugin_install.png)

6. Click on the _OK_ button to dismiss the dialog.

## Removing the Shell Plugin from Premium Boundary

1. Login into Boundary Premium
2.
2. Display the settings dialog by clicking on the _settings icon_: ![](src/main/resources/settings_icon.png)

3. Click on the _Plugins_ in the settings dialog which lists the installed plugins: ![foo](src/main/resources/plugin_installed_settings.png)
4. Locate the _boundary\_plugin\_shell_ and click on the item, which then displays the uninstall dialog:
![foo](src/main/resources/plugin_details_uninstall.png)

5. Click on the _Uninstall_ button which then displays a confirmation dialog along with the details on what metrics and dashboards will be removed.![foo](src/main/resources/plugin_uninstall.png)

6. Click on the _Uninstall_ button to perfom the actual uninstall.

## Configuration

Once the Shell Plugin is installed a metric to be collected requires configuration. Configuration of a Shell Plugin collected metric requires that a _relay_ is installed. Instructions on how to install a relay for



## Plugin Shell Protocol

Collection of your own defined metric requires a program or script to:

1. Collect, by any means the desired metric
2. Write the collected metric value, along with the metric name, and source to [standard output](http://en.wikipedia.org/wiki/Standard_output) with an accompanying new line.

Here Bash shell code snipet that illustrates

```bash
### Collect the metric

# List the directory, count the lines, and remove white space
file_count=$(ls -1 $directory_path | wc -l | tr -d ' ')

### Write the metric standard out

echo "FILE_COUNT $file_count $(hostname)"
```

Here is yet another snipet that gets the collects and outputs the processor load in a single line of code:

```bash
echo $(uptime) $(hostname) | awk '{printf("LOAD_1_MINUTE %s %s\nLOAD_5_MINUTE %s %s\nLOAD_15_MINUTE %s %s\n",$8,$11,$9,$11,$10,$11)}'
```
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



