Basic code and file structure for new applications using React.
##### Packages Used:
  * React 15.3
  * React-Router 4.1
  * Babel 6
  * Webpack 2.5
  * Webpack Dev Server 2.4

Plus the latest babel cores, webpack loaders, etc.

##### File Structure
This project structure uses the Smart vs Dumb component design, which among many other reasons makes it easy to integrate Flux/Redux into your app. [More info here.](https://jaketrent.com/post/smart-dumb-components-react/)

The `www/` folder contains the `app/` folder which contains all the code. Once you have webpack compile the project, a `bin/` folder will be created and the bundle file will be inside `www/bin/`.

`app/` contains three folders, `containers/`, `components/`, and `config/`. Containers are the top-level "smart" React components, while Components are the "Dumb" ones. 

`config/` contains the routes for React Router, and should contain any other configuration data used by the app, like API keys.

##### New Project Script
The boilerplate includes a script that creates a new project in the directory of your choice. The script does the following:
  * Copies the code and config files to the new directory
  * Changes the name of the project inside package.json
  * Installs the project dependencies
  * Initializes a new git repo. 
  * Creates a readme with placeholder text. 
 
This means that the script requires npm and git to be installed globally on your system. The script does not interface with Github or any other web git service, nor does it change the author information from the default blank. 