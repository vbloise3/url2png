#!/usr/bin/env bash

##create an s3 bucket with web hosting enabled
aws s3 mb s3://url2png-vincebloise
aws s3 website s3://url2png-vincebloise --index-document index.html --error-document error.html

##create message queue
aws sqs create-queue --queue-name url2png
## the queue url:
##{
##    "QueueUrl": "https://us-west-2.queue.amazonaws.com/001178231653/url2png"
##}

##find out how many queue messages are in the queue
aws sqs get-queue-attributes --queue-url https://us-west-2.queue.amazonaws.com/001178231653/url2png --attribute-names ApproximateNumberOfMessages