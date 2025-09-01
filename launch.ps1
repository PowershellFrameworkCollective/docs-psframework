<#
Launches a local instance of the docs.
In order for this to work on any machine, the node_modules folder must exist in the cloned folder (which is excluded from the repo by default).

Setup:

1. Install Node.js
2. Create Dummy Project
3. Copy/Move "node_modules" folder into this directory.

> Install Node.js

It all starts with "Node.js": Install it on your machine.
You can get the installer here: https://nodejs.org/en/download/

> Create Dummy Project

Start a new console after finishing the installation, navigate to a temp folder and run this command:

npx create-docusaurus@latest psframework classic

Confirm the installation prompt and pick "JavaScript" when prompted for the target language.
Then wait as the temporary project is set up.

> Copy/Move "node_modules" folder into this directory.

In the temp folder, you can now find a subfolder named "psframework".
In that folder, there are some subfolders, one being "node_modules".
Move this folder into the very folder the current file is in.
#>
npx docusaurus start