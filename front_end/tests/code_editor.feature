Feature: code editor
    The code editor would allow the user to edit their code
    As a developer
    I want a code editor so that I can edit my code easily

    
Given the app is started
Then the code editor should be shown
And no files should be open yet # this will change to continuing from the last file that was being edited later
When the app is finished rendering
