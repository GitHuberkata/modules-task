# A sample repo to demonstrate work with code split in modules

### Prerequisites

- Git
- Terraform CLI
- AWS credentials

### Use case 

Creation of 2 resources (ec2 and security group) in two different regions. 

### Instructions
A subfolder `modules` is created in the root folder. In it we have 3 files:
- `providers.tf` - the code for the regions where the resources to be provisioned
- `ec2.tf` - the configuration of the ec2 
- `security-gr.tf` - the configuration for the security group creation

In the `main.tf` in the root folder we call the modules as follows:
```
module "modules" {
    source = "../working-with-modules/modules"
}
```
### How to use
1. Clone the repo
```
git clone https://github.com/GitHuberkata/working-with-modules.git
```
2. Navigate to the folder
``` cd working-with-modules ```

3. Navigate to the root module and perform the following commands
- `terraform init`
- `terraform plan`
- `terraform apply`

After the `apply` we will have one ec2 instance created in region `us-east-1` and one security group in region `us-west-2`.

