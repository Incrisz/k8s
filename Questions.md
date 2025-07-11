# Kubernetes Study Questions

## 🏗️ Core Architecture

**Q1:** What are the two main components of a Kubernetes cluster and how do they relate to each other?

**Q2:** What is KIND and what is its primary purpose?

**Q3:** Complete the analogy: "A Kubernetes cluster is like a full body with a _____ (control plane) and _____ (worker nodes)."

## 🏃‍♂️ Pods and Configuration

**Q4:** What is the smallest unit in Kubernetes?

**Q5:** What does "AKMS RCVR" represent in the context of Pods?

**Q6:** What is a Sidecar container and provide an example of its use?

**Q7:** True or False: A Pod can only contain one container.

## 🎯 Organization and Scaling

**Q8:** What is the primary purpose of Namespaces in Kubernetes?

**Q9:** What does a ReplicaSet ensure in a Kubernetes cluster?

**Q10:** List three main functions that a Deployment provides for managing applications.

**Q11:** How does a Deployment relate to Pods and ReplicaSets?

## 🌐 Networking and Discovery

**Q12:** What load balancing algorithm does Kubernetes Services use by default?

**Q13:** Complete this DNS record example: `my-service._____.svc.cluster.local`

**Q14:** What are the three main functions that Services provide?

**Q15:** Explain the traffic flow from external request to Pod through Ingress and Services.

**Q16:** What is Local DNS in the context of Kubernetes?

**Q17:** Fill in the blanks: "_____ Controller brings traffic into the cluster, _____ defines where it should go, and the Kubernetes _____ handles internal routing."

## 💾 Storage Management

**Q18:** What do the following acronyms stand for?
- PVC: _____
- PV: _____

**Q19:** What is a StorageClass in Kubernetes?

**Q20:** Match the Access Mode to its description:
- RWO: _____
- ROX: _____
- RWX: _____

**Q21:** What is the role of a Provisioner in Kubernetes storage?

## 🔧 Configuration Management

**Q22:** What is the difference between a ConfigMap and a Secret?

**Q23:** In what format are Secrets encoded?

**Q24:** True or False: ConfigMaps should be used to store sensitive information like passwords.

**Q25:** What is the main advantage of using ConfigMaps and Secrets instead of baking configuration into container images?

## 📦 Package Management

**Q26:** Complete the analogy: "If Kubernetes YAML is raw ingredients, Helm is your _____ and _____ — bundling everything so you can cook (deploy) faster and consistently."

**Q27:** What is a Helm Chart?

**Q28:** What three main things does a Helm Chart folder contain?

**Q29:** How does Helm help with managing Kubernetes applications?

## 🧠 Scenario-Based Questions

**Q30:** You have a web application that needs to store user uploads. Which Kubernetes storage access mode would be most appropriate and why?

**Q31:** Your application needs to connect to a database. How would you store the database password securely in Kubernetes?

**Q32:** You want to deploy the same application to development, staging, and production environments. What Kubernetes concepts would you use to organize and manage these deployments?

**Q33:** Your application suddenly gets high traffic and you need to scale from 2 to 10 instances. Which Kubernetes object would handle this scaling operation?

**Q34:** You have a microservices architecture with multiple services that need to communicate. How would they find and connect to each other in Kubernetes?

**Q35:** You want to make your application accessible from outside the cluster via a custom domain. What Kubernetes components would you need to configure?

## 💡 Advanced Understanding

**Q36:** Explain the relationship between all these components in a typical web application deployment: Deployment → ReplicaSet → Pod → Service → Ingress

**Q37:** Why might you choose to use a Sidecar container instead of adding functionality directly to your main application container?

**Q38:** What happens to the data stored in a Pod when the Pod is deleted? How can you ensure data persistence?

**Q39:** Compare and contrast: When would you use Helm vs. plain Kubernetes YAML files?

**Q40:** In what scenarios would you use each of the three storage access modes (RWO, ROX, RWX)?