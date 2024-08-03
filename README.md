## VPC-Autoscale

### Project Overview

Hey there! Welcome to my wild adventure into the world of AWS, where I've been having a blast exploring cloud resources and playing around with infrastructure automation. Getting my hands dirty with Terraform, Ansible, Puppet, and Jenkins, I’ve conjured up a system that scales AWS resources up or down based on load. Expecto Patronum - poof, more servers!

Below's the architecture:

![vpc-example-private-subnets](https://github.com/user-attachments/assets/db80e55f-fc09-41d7-86db-e3b50aaf3199)

### Prerequisites

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

I've always been fascinated by the cloud and its endless possibilities. This project gave me the perfect excuse to dive deep into AWS and learn how to automate and manage resources like a pro. Plus, who doesn't love seeing their infrastructure scale effortlessly in response to demand?

### Why I believe it's a great project

- Real-World Impact: Many businesses face unpredictable traffic patterns. VPC-Autoscale addresses this by dynamically scaling resources to match demand, preventing downtime and improving user experience.
- Cost Savings: By scaling down during low traffic periods, businesses save money on unnecessary infrastructure costs.
- Versatility: Suitable for various industries including e-commerce, media, SaaS, and tech startups

### Conclusion
In the world of small to medium-sized businesses, where every dollar and every user counts, having an automated, scalable, and cost-effective infrastructure solution like VPC-Autoscale is a game-changer. So yes, it’s really that good of a project!
