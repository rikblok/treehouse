					   R2DToo 1.9
					   ==========

This folder contains the simulation tool R2DToo
<http://rikblok.shorturl.com/software/r2dtoo>.  If you redistribute
this program, please keep this file attached.

Contents
========

1. File List
2. Requirements
3. Installation
4. Usage
   4.1 Automation Server
5. Known Problems
6. Revisions
7. To-do List
-----------------------------------------------------------------------------
1. File List
============

R2DToo.exe     - the main program
R2DTooAPI.dll  - dynamic link library to interface with models (required)
help\*         - help files in HTML format (the main help is index.html)
models\*       - (optional) sample models including source code and help
scripts\*      - (optional) demonstration automation scripts
source\*       - (optional) source code (Borland C++Builder 1.0)
ReadMe.txt     - this file
-----------------------------------------------------------------------------
2. Requirements
===============

This program should run on most 32-bit MS-Windows platforms
(Win 95/98/ME/NT/2000/XP).
-----------------------------------------------------------------------------
3. Installation
===============

To install R2DToo run the installer program and follow the instructions.
If your platform is MS-Windows 2000/XP you must have Administrator privileges
to install it.

There are 3 optional components that may be installed:
	"Include source code" will copy all the source code for R2DToo into a
		folder "source" off of the main application folder.
	"Install sample models" will install a few sample models and add their
		shortcuts to the Start Menu.
	"Register as automation server (for scripting)" will register R2DToo as
		an automation server.  See the "Automation Server" section, below.

To uninstall, run "Uninstall R2DToo" or select R2DToo from the "Add/Remove
Programs" control panel applet.  All added files and registry changes will be
undone.  Only files that were created by the installer will be removed
(so it will not remove any models you have written).
-----------------------------------------------------------------------------
4. Usage
========

R2DToo will not function until a model has been installed.  Some sample models
are available from http://rikblok.shorturl.com/software/r2dtoo/models.  First
install the program and then install the models.  If you use the model's
automatic installation it will create a shortcut on the desktop to run the
program.  (Otherwise, see the model's ReadMe.txt file to see how to run it.)

4.1 Automation Server
---------------------

R2DToo includes an automation server so it can be controlled automatically
by another program or script.  Automation is enabled on installation if you
check the "Register as automation server (for scripting)" checkbox.  Otherwise,
to enable it run "R2DToo.exe /regserver" which will add the necessary entries to
the system registry.  The entries can be removed at any point by running
"R2DToo.exe /unregserver".

See the section on Automation in the R2DToo help files for more information or
browse the "scripts\" folder for some examples.
-----------------------------------------------------------------------------
5. Known Problems
=================

Problem:    R2DToo becomes unresponsive while creating a new simulation.
Workaround: None.  Just wait for it to finish.
-----------------------------------------------------------------------------
6. Revisions
============

v1.9	March 9, 2003
	- cosmetic changes
	- fixed: some corrections in help files
	- fixed: occasional loss of user responsiveness.  Reduced thread priorities
	to lowest.
	- fixed: (I think.) Exceptions when starting with no model loaded and
	ancillary forms visible.
	- added automation method Refresh() to update display, eg. after SetState()
	- added "R2DToo Help" to start menu group
	- added hints while hovering over view portal (provided by model function
	getAgentHint())
	- added "Mandelbrot Set" model to install
	- API v1.6
		- new functions getTickRef() & getTickVal() provided
		- speed improvements to some nbrhd*() functions
		- new functions doSim*() provided to model
		- new model event handlers onSimReady() & onMouseUp()
		- new model function getAgentHint()

v1.8	November 26, 2002
	- API v1.5
		- allows loading/unloading of model without requiring restart
		- many model functions are now optional
		- new naming convention for model functions
		- model functions no longer have direct access to param data-structure.
		(Use getParamRef() or getParamVal() instead.)
		- not compatible with models based on older API versions
	- display settings saved in registry (HKCU\Software\R2DToo) instead of
	R2DToo.ini file
	- new source-file naming convention
	- added LoadModel(), GetLoadModelErr() and SimWait() functions to automation
	- fixed: occasional exceptions when pausing due to synchronization problems
	- changed: fast framerate=refresh on every tick (no dropped frames),
	medium=use 50% cpu, slow=1% cpu
	- cosmetic changes
	- requires API v1.5
	- new installer with uninstall support
	- 4 (optional) sample models included with installation

v1.7    September 10, 2002
	- API v1.4
		- nbrhdCCDM() function provided to model for scale-free random networks
		and many more
		- some properties accepted instead of parameter constraints
		(enabled=false <-> noedit, type=bool|int <-> bool|int, min=... <-> >=...,
		max=... <-> <=...).  Future API releases will require properties.
	- added conditional stops (Simulation > Stop Conditions menu item)
	- removed Experiment form
	- added OLE/COM automation so R2DToo can be automated (eg. with Windows
	Scripting Host)
	- changed from TAnimTimer to TThreadedTimer because seems faster and smoother
	- fixed: system performance degraded while creating new simulation

v1.6    July 6, 2002
	- API v1.3
		- noedit parameter constraint added
		- nbrhdFractal(), nbrhdBlocks(), and nbrhdRandomER()
		functions provided to model for deterministic scale-free
		networks, clusters, and Erdos-Renyi random graphs,
		respectively
		- multiple nbrhd* are now allowed, adding non-degenerate
		links (ie. if they don't already exist).  For example,
		calling nbrhdFractal() and nbrhdBlocks() produces a clustered
		scale-free network
		- aboutParam() and aboutState() functions required from model
		(so older models are incompatible with this API release)
	- fixed: time series was sometimes out of sync when simulation paused
	- fixed: experiment didn't reset all parameters on each iteration
	- fixed: view portal size wasn't initializing properly
	- increased precision of time series axes
	- simplified keyboard shortcuts
	- timeseries: Graph > Save As... bitmap or windows metafile
	- details about model parameters and state variables provided in
	"New Simulation" dialog and "Inspect Site" form
	- cosmetic changes
	- requires API v1.3

v1.5    October 24, 2001
	- added debug log window.  Written to with the dprintf() function
	- fixed: during experiment time series would get cleared after
	simulation had passed time at which it was supposed to start
	recording
	- fixed: view portal was sometimes out of sync when simulation paused
	- time series and experiment settings saved/loaded with parameter
	settings
	- fixed: experiment exported data beyond start/stop times
	- fixed: synchronization problems when running experiments (still).
	Increased interval of checks to 5 seconds.
	- accepts configuration filename on command-line
	- cosmetic changes

v1.4    August 19, 2001
	- cosmetic changes
	- exported data only records parameters in header, by default
	- parameters can be changed while running, plotted on time series,
	and exported
	- bug fixed: synchronization problems when running experiments.
	Fixed by reducing frequency of checking start/stop times while
	experiment running.

v1.3    August 1, 2001
	- changed agent state variable type from int to float (API v1.1)
		- now checks API version with model's requiresAPI() function.
		Pre-v1.1 models are incompatible with this API.
	- added parameter constraint bool (API v1.1)
	- minor cosmetic changes

v1.2b    June 12, 2001
	- fixed: can't completely hide view portal on some displays
	- minor cosmetic changes

v1.2    May 25, 2001
	- first public release
	- renamed program to R2DToo (Rik's 2D simulation Tool)
	- major rewrite: separated program into frontend (R2DToo.exe),
	API (R2DTooAPI.dll), and model (model.dll).  Automatically loads
	model.dll found in start folder.
	- added model-specific about box and support for model-specific help
	- wrote help for API
	- wrote two sample models: Conway's Game of Life and the Spatial
	Prisoners' Dilemma
	- cosmetic changes
-----------------------------------------------------------------------------
7. To-do List
=============

Changes I hope to incorporate in future releases:

API v1.7+
	- invert colors of agents in selected region (set x1,y1=position onMouseDown,
	x2,y2=position onMouseMove(if down).  Cancel? on mouse up (x1=y1=x2=y2=-1))
	No: then can't use mouse to draw...maybe provide onAgentDraw with
	Selected boolean flag instead.
	- change internal structure of neighbours from array to doubly-linked
	list (should increase speed when creating new simulations and allow
	changing of the network structure while simulation running...but will
	slow down accessing specific neighbours, eg. getNbr(i) will take i
	operations instead of 1 w/ arrays)
	- add weights to nbrs.  Eg. addNbr(...,weight=1) increments weight by
	one (if nbr already in list)
	- change all references: Agent->Cell, eg. onCellDraw(), forEachCell()
	- change internal structure of param to doubly-linked list of [value,
	name, properties] (so don't need to pre-allocate space, can just call
	setParam(...) instead of assignParam(i,...)).
	- note: always keep internal structure of state[] as array because it
	is frequently accessed, eg. in onAgentDraw()
	- provide addNbr(a,b) which adds b to a's neighbourhood.  To be called in
	onSimCreate.  Let's programmers define their own neighbourhoods.

v2.0+
	- add automation method .AboutR2DToo to get version info
	- add automation property .CurrentDirectory with read/write access
	- video/frame capture
	- create new simulation in separate thread so program remains responsive
	- add in-place editor in "New Simulation" dialog
	- add "type=combobox" or "type=picklist" parameter property
	- support changing of some parameters while simulation running
	- simplex view?
-----------------------------------------------------------------------------

Rik Blok, 2003
http://rikblok.shorturl.com

