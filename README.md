# Utility
Collection of utility procedures for various purposes.

All procedures will be prefixed with 'Utility_'.

# Procedures
<ul>
  <li>Utility_getSystemName - Retrieve the system name using a simple interface.</li>
  <li>Utility_getLastSpooledFileCreated - Retrieve the job name, number, user and the spooled file name for the most recent spooled file created within this job.</li>  
</ul>

# Preparation
After downloading all of the programs, you must create the objects in the correct order using the following commands.
<ol>
  <li>Create module command</li>
  <li>CRTSRVPGM SRVPGM(LIBRARYHERE/UTILITY) MODULE(*SRVPGM) SRCFILE(LIBRARY/QSRVSRC)</li>
  <li>Create the Binding Directory - CRTBNDDIR BNDDIR(LIBRARYHERE/UTILITY) TEXT('Utility Service Program Binding Directory')</li>
  <li>Add the Service Program to the Binding Directory - WRKBNDDIRE BNDDIR(UTILITY). After the screen is displayed type a 1, then "UTILITY" followed by *SRVPGM and press enter. This should successfully add a record with "*IMMED" activation.</li>
</ol>
