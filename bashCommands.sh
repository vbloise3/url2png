#!/usr/bin/env bash

##create an s3 bucket with web hosting enabled
aws s3 mb s3://url2png-vincebloise
aws s3 website s3://url2png-vincebloise --index-document index.html --error-document error.html
