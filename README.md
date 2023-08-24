# APP Template for No-Code Platforms

## GOAL
This template is designed to equip developers with the tools needed to build apps compatible with Zapier and Make (previously known as Integromat). It comes with built-in OAuth2 and webhook capabilities to seamlessly integrate with these no-code platforms. Additionally, the guide provides a straightforward approach to deploying on AWS, enabling developers to further customize the template and launch their apps.

## Install

```bash
python3 -m venv venv
source venv/bin/activate
python3 -m pip install --upgrade pip
pip install -r requirements.txt
```

## Run Locally

```bash
python run.py
```

## Setting Up Docker Hub Secrets for Automated Docker Image Builds

These secrets are vital for automating Docker image builds using CI/CD tools like GitHub Actions. Once the image is built and stored on Docker Hub, it can be deployed to various platforms, including AWS Elastic Beanstalk, Kubernetes, and more.

1. **Create Docker Hub Access Token**:
   Log in to Docker Hub with your credentials. Click on your profile icon in the top right corner. Navigate to Account Settings -> Security, Click Create a New Access Token.

2. **Set Up Docker Hub Secrets in Your Github Repo**:
   Go to Settings -> Secrets and Variables -> Actions, click New Repository Secret. 
   
   For the name field, enter DOCKERHUB_USERNAME, and for the value field, enter your Docker Hub account username.

   Similarly, add another secret: for the name field, enter DOCKERHUB_TOKEN and for the value field, paste the access token you created in step 1.

## Deploy to AWS Elastic Beanstalk

1. **Set Up Docker Image Path**
   Update the "Name" field in Dockerrun.aws.json to match the format: "yourusername/yourdockerreponame:tag".

2. **Install the EB CLI**:
   If you haven't already installed the EB CLI on your local machine, you can do so using the following command:
   ```
   pip install awsebcli
   ```

3. **Initialize Your Application**:
   Navigate to your project directory and run:
   ```
   eb init
   ```
 
4. **Add AWS Credentials**:
  If you have not previously set up the CLI with your AWS credentials on your computer, it will prompt you to provide your AWS Access Key ID and Secret Access Key. These are generated from the AWS Management Console, specifically from the Identity and Access Management (IAM) section. Once provided, the eb CLI stores these credentials in a profile (by default, the profile is named default) located in ~/.aws/config on macOS and Linux or C:\Users\USERNAME\.aws\config on Windows. 

   Answer all questions, select the platform branch with "Docker running on 64bit Amazon Linux 2" unless you have specific reason.

5. **Create an Environment and Deploy**:
   Once initialized, create an environment and deploy your application with:
   ```
   eb create your-environment-name
   ```

6. **Update the Code and Deploy**:
   During the time updating your code, just commit the code and run to update the app:
   ```
   export AWS_PROFILE=eb-cli
   eb deploy

   ```

7. **Open in Browser**:
   Your application is deployed on AWS Elastic Beanstalk. You can open it in a web browser with:
   ```
   eb open
   ```

8. **View Logs**:
   If you encounter any issues during deployment, you can view the logs with:
   ```
   eb logs
   ```
