
#!/bin/bash
echo "Deploying Application to EC2..."

# Variables
JAR_FILE="target/catalog-service.jar"
EC2_USER="ec2-user"
EC2_IP="YOUR_EC2_PUBLIC_IP"
PEM_FILE="your-key.pem"
REMOTE_DIR="/home/ec2-user"

# Copy the JAR file
scp -i $PEM_FILE $JAR_FILE $EC2_USER@$EC2_IP:$REMOTE_DIR

# SSH into EC2 and run the JAR
ssh -i $PEM_FILE $EC2_USER@$EC2_IP << EOF
  pkill -f java || true
  nohup java -jar $REMOTE_DIR/catalog-service.jar > app.log 2>&1 &
EOF

echo "Application deployed successfully!"
