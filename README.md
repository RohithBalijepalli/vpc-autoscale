## VPC-Autoscale - Secure VPC Architecture with Auto Scaling, NAT Gateways and Subnets

### Project Overview

This project involves creating a secure Virtual Private Cloud (VPC) with both public and private subnets, NAT gateways, and auto-scaling capabilities. Using Terraform for infrastructure as code, Ansible and Puppet for configuration management, and Jenkins for continuous integration and deployment, I’ve built a resilient and scalable cloud infrastructure. The setup ensures high availability and security, with automated scaling to handle varying loads efficiently!

### Prerequisites

Before you dive in, make sure you have these (because getting this working on a local desktop is harder than finding a unicorn):
- AWS account with necessary IAM permissions.
- Jenkins installed and configured.
- Terraform installed.
- Ansible installed.
- Puppet installed.
- Git installed.

### Installation

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/your-username/vpc-autoscale.git
    cd vpc-autoscale
    ```

2. **Configure AWS CLI:**
    ```sh
    aws configure
    ```

3. **Install Terraform:**
    ```sh
    sudo apt-get update && sudo apt-get install -y terraform
    ```

5. **Install Ansible:**
    ```sh
    sudo apt-get update && sudo apt-get install -y ansible
    ```

6. **Install Puppet:**
    Follow the instructions on the [Puppet website](https://puppet.com/docs/puppet/latest/installing_and_upgrading.html).

7. **Configure Jenkins:**
    - Install Jenkins from the [Jenkins website](https://www.jenkins.io/download/).
    - Install plugins: AWS, Ansible, Terraform, and SSH credentials.
    - Create a new pipeline using the provided `Jenkinsfile`.
    - If you're doing it on your own system, you wil be able to access jenkins on `http://localhost:8080/`

### Usage

1. **Initialize Terraform:**
    ```sh
    terraform init
    ```

2. **Apply Terraform Configuration:**
    ```sh
    terraform apply
    ```

3. **Run Ansible Playbook:**
    ```sh
    ansible-playbook -i inventory/hosts playbook.yml
    ```

4. **Deploy with Puppet:**
    ```sh
    puppet apply manifests/site.pp
    ```

5. **Automate with Jenkins:**
    Trigger the Jenkins pipeline to automate the entire process.

### Why I Did This

I've always been fascinated by the cloud and its endless possibilities. This project gave me the perfect excuse to dive deep into AWS and learn how to automate and manage resources using multiple technologies. Plus, who doesn't love seeing their infrastructure scale effortlessly in response to demand?

### Real-World Use Cases
- High Volume handling:

You're running a small e-commerce business, and you decide to have a flash sale on your most popular product. As soon as the sale goes live, shoppers flood your website, eager to snag the deal. Without VPC-Autoscale, your site might crash, leading to lost sales and frustrated customers. But with it, your infrastructure scales up instantly to handle the rush, keeping everything running smoothly. After the sale, it scales back down, keeping your costs in check. Now you can focus on counting your sales instead of fighting the server issues!
- Cost Savings:

You're a small tech startup, and every penny counts. Running your infrastructure 24/7 at full capacity would be like leaving all the lights on in your house - just gets too expensive. We can scale the infrastructure up when your users need it and scales down when they don't, with VPC autoscale. This means you only pay for what you actually use. During off-peak hours, your costs are minimized because your resources are scaled down

### Conclusion
In the world of small to medium-sized businesses, where every dollar and every user counts, having an automated, scalable, and cost-effective infrastructure solution like VPC-Autoscale can be a game-changer!
