#!/bin/bash

S3_BUILD_BUCKET="si-aws-mads/course-ci-scripts/testing"
REPO_NAME="mads_demo_course"

echo "Downloading build scripts from $S3_BUILD_BUCKET..."
aws s3 cp s3://$S3_BUILD_BUCKET/pre_build.sh pre_build.sh && chmod +x pre_build.sh
aws s3 cp s3://$S3_BUILD_BUCKET/build.sh build.sh && chmod +x build.sh
aws s3 cp s3://$S3_BUILD_BUCKET/post_build.sh post_build.sh && chmod +x post_build.sh
aws s3 cp s3://$S3_BUILD_BUCKET/send_email.py send_email.py

aws s3 cp s3://$S3_BUILD_BUCKET/grader.py grader.py
aws s3 cp s3://$S3_BUILD_BUCKET/grader.sh grader.sh 
aws s3 cp s3://$S3_BUILD_BUCKET/nbgrader_config.py nbgrader_config.py 
aws s3 cp s3://$S3_BUILD_BUCKET/template_autograder_dockerfile template_autograder_dockerfile 
aws s3 cp s3://$S3_BUILD_BUCKET/template_coursera_workspace_dockerfile template_coursera_workspace_dockerfile

# Create autograder dockerfile
mkdir "autograder_image"
cp template_autograder_dockerfile autograder_image/Dockerfile
sed -i.bak "s/\${REPO_NAME}/$REPO_NAME/g" autograder_image/Dockerfile
cp grader.py autograder_image/
cp grader.sh autograder_image/
cp -r workspace_files/autograded_assignments autograder_image/autograded_assignments
# TESTS (do we want to test these somehow?)
# docker build -t autograder_image -f autograder_image/Dockerfile autograder_image/
# docker run autograder_image
# END TESTS
cd autograder_image && zip -r ../autograder_image.zip . && cd ..

# Create coursera workspace dockerfile
mkdir "coursera_workspace_image"
cp template_coursera_workspace_dockerfile coursera_workspace_image/Dockerfile
sed -i.bak "s/\${REPO_NAME}/$REPO_NAME/g" coursera_workspace_image/Dockerfile
cp nbgrader_config.py coursera_workspace_image/
cp -r workspace_files/autograded_assignments coursera_workspace_image/autograded_assignments
# TESTS (unable to test due to coursera dependencies)
# docker build -t coursera_workspace_image -f coursera_workspace_image/Dockerfile coursera_workspace_image/
# END TESTS
cd coursera_workspace_image && zip -r ../coursera_workspace_image.zip . && cd ..

rm pre_build.sh
rm build.sh
rm post_build.sh
rm send_email.py
rm grader.py
rm grader.sh
rm nbgrader_config.py
rm template_autograder_dockerfile
rm template_coursera_workspace_dockerfile