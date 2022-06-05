#!/bin/bash

aws_metadata="curl http://169.254.169.254/latest/dynamic/instance-identity/document"

echo $aws_metadata | bash


