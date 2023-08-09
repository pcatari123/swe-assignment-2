# SWE-645 - Assignment 1
# Pramod Kumar Catari | G01398498

This submission folder contains:
1. A index.html page with personal introduction.
2. An error.html page.
3. A survey.html with the survey form along with required fields.
4. An assets folder - which contains images, files and the stylesheets used.
5. bootstrap.min.css and bootstrap.min.js files.
6. A swe645-assignment-1.war file used to deploy the application on EC2.
7. A readme.md file.

PART-1: The index.html and error.html pages have been hosted on a AWS S3 bucket and a link has been provided below.  

Steps followed to host on AWS S3:
1) Created an AWS free tier account and created a S3 bucket. Unchecked the disable public access while doing so.
2) Under properties - enable static website hosting and save changes
3) under permissions - enable public access and add bucket policy wherein added bucketname under Resource (from the tutorial given)
4) Uploaded all files mentioned above to the bucket created
Tested the above link and is working.


PART-2: You can view my homework assignment part-1 and navigate to the student survey page i.e part-2 using the S3 link below

Steps followed for Part-2:
1) Created a Dynamic Web project on Eclipse IDE and a war file
2) Created an Amazon EC2 instance with a new KeyPair generated.
3) Connected to the EC2 instance and deployed the we645-assignment-1.war file using the following commands:

    sudo chmod 400 swe645-a1.pem

    sudo ssh swe645-a1.pem ubuntu@ec2-54-161-173-164.compute-1.amazonaws.com

    sudo scp -i swe645-a1.pem swe645-assignment-1.war bitnami@ec2-54-221-158-203.compute-1.amazonaws.com:~/

    cd apache-tomcat/bin/

    ./shutdown.sh

    ./startup.sh

AWS S3 bucket link: http://summercs645.s3-website.us-east-2.amazonaws.com/

AWS EC2 survey form link: http://ec2-52-90-76-136.compute-1.amazonaws.com/swe645-assignment-1/

