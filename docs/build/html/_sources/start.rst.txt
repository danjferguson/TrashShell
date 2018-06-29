######
Start
######

The correct tools  critical if you are just getting started. Back when writing batch startup scripts was the most complicated thing I did, notepad.exe was sufficient. As scripts and datasets became more complicated, Notepad++ was a solution that I relied on for years. Then, I stumbled upon Sublime, which was a big improvement overall and began my journey into a DevOps world. In 2018, with all the file types that need to be used, and on a variety of platforms, you need good software to run your scripts. Many people continue to use PowerShell ISE or other third-party options.

The tool Microsoft is using to make all this happen: VS Code. It can be deployed manually or through Chocolatey quickly on Windows, but can still be used on MacOS or Linux if you have a need to use other platforms. VS Code has built in Git integration, provides multiple shell access methods, while still giving you some user friendly options as you find yourself moving deeper into the DevOps waters.

Windows Dev Environment
#######################

Software Requirements
---------------------

- Windows 10 (Pro or Enterprise)
- VS Code
- PowerShell 5.1+

Optional Software
-----------------
- Git for Windows
- Ubuntu for Windows
- Chocolatey
- Python
- PowerCLI

Comments
--------

You're probably on a Windows 10 machine reading this, or you should be soon. Please have an understanding of how to operate administrative functions within Windows and accessing system files, adjusting security settings, and having patience with some of the quirks of merging Unix based and Windows systems together. Ideally, you are creating this environment in a VM so that you can test everything before you modify your own machine. During the process of moving from a GUI heavy work flow to learning infrastructure as code, I kept my GUI friendly environment intact as my security blanket when I wasn't quite sure what I was doing. It is advisable to keep your own admin tools intact, but working in parallel as you make your transition to more powerful tools. The best part about throwing out the GUI, is you can generate your administrative systems with code with minimal resources, giving you a reliable environment to work from so you can focus on solving problems rather than fixing your own gear.

Unix based systems can utilize tmux to achieve the environment and workflow described in this documentation. Windows doesn't yet have that completely ported over yet (tmux is availble in Azure however), so VS Code has become the IDE and terminal interface of choice in this workflow. PowerShell ISE lacks the additional code fucntionality you will need to help transition away from GUI tools.

MacOS Dev Environment
#####################

Software Requirements
---------------------

- MacOS High Sierra+
- VS Code
- PowerShell 5.1+

Optional Software
-----------------
- Python
- Homebrew
- PowerCLI

Comments
--------

This is my preferred development platform. It is capable of delivering every possible platform you will ever run accross, and the higher end MacBook pro is capable of running a variety of virtual environments with USB-C SSDs and plenty of processor and RAM to run containers and full VMs with ease. Some of the configurations require special settings in order to operate correctly to administer Windows systems. Because of the additional complexity, it is recommended to focus on the Windows platform unless you are very familiar with MacOS and using PowerShell, Homebrew. Having some understanding and knowledge of Python, Lua, and Lmod is also great too. This documentation was created using all of these tools going between a MacBook Pro and an iMac with mixed results depending on how much I managed to screw up my environment.
