# Steps to Create the Task in Task Scheduler
1. **Open Task Scheduler:**
   Press ``Win + R ``, type ``taskschd.msc``, and press Enter.
   
2. **Create a New Task:**
    In the right-hand Actions pane, click **Create Task.**
    
3. **General Tab:**

    - **Name:** Provide a meaningful name for your task (e.g., ``Run npm dev``).
    - **Description:** Optionally, add a description for the task.
    - **Security Options:**
      - Choose **Run whether the user is logged on or not** if you want this task to run in the background.
      - If your script requires elevated privileges, check **Run with highest privileges.**

4. **Triggers Tab:**
    - Click **New** to create a trigger.
    - **Begin the Task:** Choose when the task should start (e.g., daily, at log on, etc.).
    - Configure the settings as required for your use case (e.g., set the time and recurrence).
5. **Actions Tab:**
    - Click **New** to add an action.
    - **Action:** Select **Start a program.**
    - **Program/script:** Enter the path to ``wscript.exe`` (the Windows Script Host). This is typically:
 
    ``` bash
    #makefile

    C:\Windows\System32\wscript.exe
    ```
    - **Add arguments (optional):** Provide the full path to your ``.vbs`` file in quotes. For example:
    
    ``` bash
    #arduino
    
    "C:\Path\To\YourScript.vbs"
    ```
    - **Start in (optional):** Enter the directory where your ``.vbs`` file is located (optional but recommended).
6. **Conditions Tab:**
    - Adjust conditions as needed:
      - Uncheck **Start the task only if the computer is on AC power** if you want it to run on battery power as well.
      - You can leave other settings as default unless you have specific requirements.
7. **Settings Tab:**
    - Enable **Allow task to be run on demand.**
    - Check **If the task fails, restart every** and set a retry interval and count if needed.
8. **Save the Task:**
    - Click **OK.**
    - If prompted, enter your user credentials to save the task.
---
**Test the Task**
1. Locate the newly created task in the Task Scheduler Library.
2. Right-click on the task and select **Run.**
3. Check if the task executes correctly :
    - Verify that ``nodemon`` starts and your ``npm run dev`` script is running.
    - If there are issues, review the "History" tab in Task Scheduler for any errors.
