# AEM Admin

### What is AEM?
 * It is content management system.
 * Based on component and templates.
 * Java based development.
 * Anyone can author and update websites - no development knowledge required.
 * Easy maintenance, easily publish data to prod, easy integration to thrird party apps.

 ![ website creation process in AEM ](https://github.com/Aakriti94/Notes/blob/main/AEM/Images/website_creation_process_in-aem.jpg)  

### Pre Requisites of AEM Learning
 * They are based on roles
 * Basic understanding of CMS
 * Frontend developer: JS, HTML, CSS, responsive design, Java
 * backend developer: JAVA, JSP/Servlets, HTL/Slightly, HTML, CSS, JS
 * Tools for a  developer: JDK, AEM quick start file, IDE, Maven, GIT, Jenkins
 * Additional: Artifactory, Apache Sling, Lucene, Apache web server, Analytics, tagging, Tomcat/JBoss
 * QA/Marketing: Jenkins, Jira, Campaign, Analytics, personalization

### AEM Installation and Setup Start Stop AEM Server
 * Pre-requisite for AEM Installation: JDK, AEM quick start file, License key or file

### AEM Architecture - Building Blocks
 * AEM6 is based on Apache Jackrabbit oak
 * Better support for big repos, Multiple distributed cluster nodes for high availability, better performance, support for many child nodes and access control levels.
 * Please visit: https://youtu.be/UKp8tALvgkw for details

### AEM Environments - Author, Publish, Replication

![AEM deployment model](https://github.com/Aakriti94/Notes/blob/main/AEM/Images/AEM_deployment_model.jpg)

 * Author: Where data gets entered
 * Publish: Data to be published through **Replication Agents**
 * Dispatcher: load balances the data

 * **AEM Author**
  * Used to author, design, create and review the content which will be published on the application.
  * It is inside the organization's firewall.
  * provides easy GUI for tasks.
  * Port: 4502 by default


 * **AEM Publish**
   * It is used to make the designed application available to the public.
   * It is in DMZ.
   * Default port: 4503


 * **AEM Dispatcher**
  *  handles instance security, load balancing, and caching from publish instance.


 * **AEM Replication**
  * Publish (activate) content from an author to an publish environment.
  * Explicitly flush content from the dispatcher cache. So, new content is available to user.
  * Return user input (eg. input form) from the publish env to the author env (under the control of author env)


### Walkthrough over various consoles

Add Image console 1,2,3

### Folder Structure

**Folder structure for AEM Project**
Insert: Folder_structure Image

**CRX-DE Fodler Structure**
1. `/apps` : contains all resources that an application uses. The resources can be templates, pages, components and so on.
1. `/bin` : Hold the servlets which are not yet registered.
1. `/conf` : All the configurations are stored here.
1. `/content` : Project specific content available here.
1. `/etc` : Project specific clientlibs stored here
1. `/libs` : System libraries related to project
1. `/temp` : Temporary Space. recreated on every startup.
1. `/system` : All system configurations are stored here. Need to be careful.
1. `/var` : hold temporary data which needs to be available after the restart.

**Site Admin Folder Structure:** When we need to create new projects. We will go under websites and create new pages.

**DAM Folder Structure:** Digital assets are stored through this console.

### Authoring & Publish Demo



















**Youtube:** https://www.youtube.com/playlist?list=PLp5chFE3m-o3e7TLZnmnrBzIja6PiEDka
