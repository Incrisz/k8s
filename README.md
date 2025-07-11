# Kubernetes Concepts Guide

## 🏗️ Core Architecture

### Kubernetes Cluster
A Kubernetes cluster is like a full body with a brain (control plane) and muscles (worker nodes), and Kubernetes is the system that controls everything inside (functions, files and commands) — while KIND is your practice version for learning and testing.

## 🏃‍♂️ Pods and Configuration

### Pod
The **smallest unit** in Kubernetes. Each Pod follows AKMS RCVR rules, and if needed, a Sidecar rides along to help the main app.

**Breakdown:**
- **Pod** → Main unit in Kubernetes
- **AKMS RCVR** → The rules/configs that define how a Pod runs
- **Sidecar** → A helper container in the same Pod (like an app running a websocket)

## 🎯 Organization and Scaling

### Namespaces
Organize resources into isolated environments.

### ReplicaSets
Ensure the desired number of identical Pods are always running.

### Deployment
A higher-level Kubernetes object that **manages Pods and ReplicaSets**, allowing you to declaratively **deploy, update, and scale** applications. A Deployment helps you manage app availability, scaling, and safe updates, with built-in support for rolling out and rolling back changes when needed.

## 🌐 Networking and Discovery

### Services
Services provide networking, load balancing (done using **round-robin**), and discovery (Kubernetes creates a **DNS record** for each Service e.g., `my-service.default.svc.cluster.local`) by giving a stable name and IP to access dynamic groups of Pods. Apps can just call each other by name — even if Pods come and go.

### Ingress
Handles *external* HTTP routing, but it always forwards traffic to a regular Kubernetes Service — which then does the load balancing and networking magic inside the cluster.

**Flow:** Ingress Controller (NGINX) brings traffic into the cluster, Ingress defines where it should go, and the Kubernetes Service handles internal routing and load balancing to the correct Pods.

### Local DNS
The internal name system that lets apps inside your cluster find and talk to each other by name — instead of IPs.

## 💾 Storage Management

### Persistent Storage
Apps create **PersistentVolumeClaims (PVCs)** to request storage like SSDs or HDDs, which Kubernetes provisions using a **StorageClass** (the storage type menu), a **Provisioner** (the installer), and creates a **PersistentVolume** (the actual disk space).

### 📦 Access Modes
These define **how the storage can be used**, such as:
- **ReadWriteOnce (RWO)** – one node can read/write
- **ReadOnlyMany (ROX)** – many nodes can read
- **ReadWriteMany (RWX)** – many nodes can read/write

## 🔧 Configuration Management

### ConfigMap
Lets you inject plain-text configuration into your containers, without baking it into the image.

### Secret
Stores sensitive information (like passwords or API keys) in a secure, base64-encoded way.

**Summary:** ConfigMaps hold plain config data, while Secrets store sensitive info like passwords — both are used to inject settings into Pods cleanly and securely.

## 📦 Package Management

### Helm
A tool that helps you define, install, and manage Kubernetes applications using reusable templates called charts.

**Analogy:** If Kubernetes YAML is raw ingredients, Helm is your recipe and chef — bundling everything so you can cook (deploy) faster and consistently.

### Helm Chart
A packaged set of templates and configurations used to define, install, and manage a Kubernetes application. A Helm Chart is a folder of templates, values, and metadata that describes how to deploy and manage a Kubernetes application in a clean, reusable way.# k8s
