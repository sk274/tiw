# Tech Innovation Week 2017 Febrary
# Getting started

  - Clone this project
  - Install [AWS EB CLI](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)
  - Pick either single docker setup (docker-perl) or multiple docker setup (multidocker) and cd into that directory
  - eb init (You will need to set up your environment, talk with DevOps)
  - eb create (or deploy)
  
# Sample output
```> eb create 
WARNING: The Multi-container Docker platform requires additional ECS permissions. Add the permissions to the aws-elasticbeanstalk-ec2-role or use your own instance profile by typing "-ip {profile-name}".
For more information see: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_docker_ecstutorial.html#create_deploy_docker_ecstutorial_role
Enter Environment Name
(default is sk274-tiw-dev): sk274-tiw-dev6
Enter DNS CNAME prefix
(default is sk274-tiw-dev6): 

Select a load balancer type
1) classic
2) application
(default is 1): 
Creating application version archive "app-170303_113744".
Uploading sk274-tiw/app-170303_113744.zip to S3. This may take a while.
Upload Complete.
Environment details for: sk274-tiw-dev6
Application name: sk274-tiw
  Region: us-east-1
  Deployed Version: app-170303_113744
  Environment ID: e-aszkgc2erm
  Platform: arn:aws:elasticbeanstalk:us-east-1::platform/Multi-container Docker running on 64bit Amazon Linux/2.5.0
  Tier: WebServer-Standard
  CNAME: sk274-tiw-dev6.us-east-1.elasticbeanstalk.com
  Updated: 2017-03-03 16:37:47.972000+00:00
Printing Status:
INFO: createEnvironment is starting.
INFO: Using elasticbeanstalk-us-east-1-092831676293 as Amazon S3 storage bucket for environment data.
INFO: Created security group named: sg-817b9bfe
INFO: Created load balancer named: awseb-e-a-AWSEBLoa-JFGX72C0S1AO
INFO: Environment health has transitioned to Pending. Initialization in progress (running for 52 seconds). There are no instances.
INFO: Created security group named: awseb-e-aszkgc2erm-stack-AWSEBSecurityGroup-EBA1NSOX2MGU
INFO: Created Auto Scaling launch configuration named: awseb-e-aszkgc2erm-stack-AWSEBAutoScalingLaunchConfiguration-1HKLX1KLZH3XD
INFO: Added instance [i-004bac7e55d0443d6] to your environment.
INFO: Created Auto Scaling group named: awseb-e-aszkgc2erm-stack-AWSEBAutoScalingGroup-163V3BOJS72HE
INFO: Waiting for EC2 instances to launch. This may take a few minutes.
INFO: Created Auto Scaling group policy named: arn:aws:autoscaling:us-east-1:092831676293:scalingPolicy:017cc0e9-9203-4a0f-a58a-587681d4fbea:autoScalingGroupName/awseb-e-aszkgc2erm-stack-AWSEBAutoScalingGroup-163V3BOJS72HE:policyName/awseb-e-aszkgc2erm-stack-AWSEBAutoScalingScaleUpPolicy-1GR03ECAYEYGP
INFO: Created Auto Scaling group policy named: arn:aws:autoscaling:us-east-1:092831676293:scalingPolicy:ec1a219b-a925-4598-ac6c-c20f40562f24:autoScalingGroupName/awseb-e-aszkgc2erm-stack-AWSEBAutoScalingGroup-163V3BOJS72HE:policyName/awseb-e-aszkgc2erm-stack-AWSEBAutoScalingScaleDownPolicy-1C9X9H1RX3DS
INFO: Created CloudWatch alarm named: awseb-e-aszkgc2erm-stack-AWSEBCloudwatchAlarmLow-1ODW79T3YW9ID
INFO: Created CloudWatch alarm named: awseb-e-aszkgc2erm-stack-AWSEBCloudwatchAlarmHigh-8T87WTFJTMXU
INFO: Starting new ECS task with awseb-sk274-tiw-dev6-aszkgc2erm:1.
INFO: ECS task: arn:aws:ecs:us-east-1:092831676293:task/12ca8365-3b11-4296-be3b-3f7e477ddaed is RUNNING.
INFO: Environment health has transitioned from Pending to Ok. Initialization completed 12 seconds ago and took 4 minutes.
INFO: Successfully launched environment: sk274-tiw-dev6

