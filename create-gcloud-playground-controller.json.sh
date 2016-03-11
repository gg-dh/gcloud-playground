#!/bin/bash

cat > gcloud-playground-controller.json <<EOF
{
  "kind": "ReplicationController",
  "apiVersion": "v1",
  "metadata": {
    "name": "playground",
    "labels": {
      "name": "playground"
    }
  },
  "spec": {
    "replicas": 3,
    "selector": {
      "name": "playground"
    },
    "template": {
      "metadata": {
        "labels": {
          "name": "playground",
          "deployment": "${WERCKER_GIT_COMMIT}"
        }
      },
      "spec": {
        "containers": [
          {
            "imagePullPolicy": "Always",
            "image": "quay.io/gg_dh/gcloud-playground:${WERCKER_GIT_COMMIT}",
            "name": "playground",
            "ports": [
              {
                "name": "http-server",
                "containerPort": 8080,
                "protocol": "TCP"
              }
            ]
          }
        ]
      }
    }
  }
}
EOF