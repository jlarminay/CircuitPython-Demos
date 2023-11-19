# CircuitPython Demos

This repo will contain a lot of small projects as I learn CircuitPython and microcontrollers.

This will assume you have a board with CircuitPython installed as well as any tools or terminal already setup. I am using VSCode with the Python and CircuitPython extensions installed.

## How to update the board

To easily upload my files to the board, I made a batch file that uploads a given project to my board. If you are going to do this, you may need to change some settings to get it working.

You can run the batch file by using the following command:

```powershell
./start.bat g 1
```

THe number set as the first parameter will be the target drive, in this case `G:/` drive, and the second will be the folder in `projects` that gets uploaded.
