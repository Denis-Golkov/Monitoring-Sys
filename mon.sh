# STEPS:
# Step 1: Create the Monitoring Namespace
kubectl create namespace monitoring

# Step 2: Set Up RBAC for Prometheus
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/prometheus-rbac.yaml

# Step 3: Deploy Prometheus
# 3.1 Create Prometheus Configuration
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/prometheus-config.yaml

# 3.2 Deploy Prometheus Server
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/prometheus-deployment.yaml

# 3.3 Create Prometheus Service
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/prometheus-service.yaml

# Step 4: Deploy Node Exporter
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/node-exporter.yaml

# Step 5: Deploy Kube-State-Metrics
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/deployment.yaml

kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/service.yaml

kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/cluster-role.yaml

kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/cluster-role-binding.yaml

kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/service-account.yaml

# Step 6: Deploy Grafana
6.1 Create Grafana Deployment
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/grafana-deployment.yaml

#6.2 Create Grafana Service 
kubectl apply -f https://raw.githubusercontent.com/Denis-Golkov/Monitoring-Sys/refs/heads/main/grafana-service.yaml