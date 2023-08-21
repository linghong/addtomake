# APP Template for No-Code Platforms

## GOAL
This template is designed to equip developers with the tools needed to build apps compatible with Zapier and Integromat (now known as Make). It comes with built-in OAuth2 and webhook capabilities to seamlessly integrate with these no-code platforms. Additionally, the guide provides a straightforward approach to deploying on AWS, enabling developers to further customize the template and launch their apps.

## Install

```bash
python3 -m venv venv
source venv/bin/activate
python3 -m pip install --upgrade pip
pip install -r requirements.txt
```

## Run Local

```bash
python run.py
```

## Deploy to AWS Elastic Beanstalk

1. **Install the EB CLI**:
   If you haven't already, install the EB CLI on your local machine.
   ```
   pip install awsebcli
   ```

2. **Initialize Your Application**:
   Navigate to your project directory and run:
   ```
   eb init
   ```
 
3. **Add AWS credentials**:
   The CLI will ask if you want to use AWS credentials from your shared credential file or if you want to input them. If you choose to input them, you will be prompted to provide your AWS Access Key ID and Secret Access Key. These are generated from the AWS Management Console, specifically from the Identity and Access Management (IAM) section.

   Once provided, the eb CLI stores these credentials in a profile (by default, the profile is named default) located in ~/.aws/credentials on macOS and Linux or C:\Users\USERNAME\.aws\credentials on Windows. 

4. **Create an Environment and Deploy**:
   Once initialized, create an environment and deploy your application with:
   ```
   eb create your-environment-name
   ```

5. **Update the Code and Deploy**:
   During the time updating your code, just commit the code and run to update the app:
   ```
   eb deploy

   ```

6. **Open in Browser**:
   Your application is deployed on AWS Elastic Beanstalk. You can open it in a web browser with:
   ```
   eb open
   ```

7. **View Logs**:
   If you encounter any issues during deployment, you can view the logs with:
   ```
   eb logs
   ```
