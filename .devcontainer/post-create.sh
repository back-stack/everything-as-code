#!/bin/bash

echo "post-create start" >> ~/status

# this runs each time the container is created.

echo alias k=kubectl >> /home/vscode/.bashrc

echo "post-create complete" >> ~/status