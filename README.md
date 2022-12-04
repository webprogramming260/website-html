# HTML website

Now that you know how HTML works it is time to put it to use and create your first website. When you are done you will have created the home page for all of the work that you do in this class. When you are done this page can serve as a portfolio of the abilities you have mastered. To get started take the following steps.

1. Verify that you server is still running and that the default web programming 260 page is still being displayed. If it is not then you need to complete, or review, the steps for setting your server.
   
   ⚠ Do not continue until this works.
1. [Fork this repository](https://github.com/webprogramming260/website-html/fork) and clone it to your development environment. For information about how to fork a GitHub repository read [this documentation](https://docs.github.com/en/get-started/quickstart/fork-a-repo).
1. The repository contains three files, `index.html`, `profile.png` and `deploy.sh`. `index.html` contains an example HTML document. `deploy.sh` contains a console shell script for copying `index.html` up to your production server and overwriting the default Caddy server home page. Open up and review these files.
1. Modify `index.html` to personalize it to yourself. Don't worry about making it look pretty at this point. You are only trying to get the content and structure right. You can come back latter and style it with CSS and make it interactive with JavaScript.
1. Give a brief profile description.
1. Include links to the CodePens for your assignments.
1. Replace the `profile.png` image with an image of yourself. Make sure the image is small (<100k) so that you don't eat up your production server's limited hard drive space. If the file is not a PNG then make sure you change the file name and the `src` attribute in the `img` element.
1. Review the contents of `deploy.sh` and make sure you understand what it is doing. The bulk of the script is just to read the parameters that are passed to it. The only thing it actually does is call `scp` (secure copy) to copy all files from the current directory to your server's `public_html` directory. The `public_html` directory is the location where Caddy (your web server) looks for static pages to host.
1. Using the console from your project directory, run the `deploy.sh` script to push your changes to your deployment environment. This script takes two parameters, the PEM file to allow secure access to your server, and your server's domain name.

   ```sh
   ./deploy.sh  -k ~/keys/cs260/production.pem -h yourhostname
   ```

   ⚠ Make sure you run the script in the project directory where the script resides.

1. Open a browser window and verify that your new home page is showing up for your domain.
1. Submit the URL for your website to the Canvas assignment along with something you found interesting about this assignment.


Now, whenever you add a new project to your website you can just update the files contained in this repository and run the deployment script again. This way you can keep your website up to date with your progress through the instruction.
