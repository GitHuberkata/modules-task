# A sample repo to demonstrate work with modules

### Prerequisites

- Git
- Terraform CLI
- AWS credentials

### Use case 

Creation of 2 resources (key pairs) in two different regions. 

### Instructions
A subfolder `modules` is created in the root folder. In it we have `key-pairs.tf` file created. It contains the resource to be created and the required providers.

In the `main.tf` in the root folder we call the modules as follows:
```
module "modules" {
    source = "../working-with-modules/modules"
}
```
As we need to crete 2 key pairs in 2 different regions we need to call the resource module twice for each region.

We need to use meta-argument `providers` in the 2 module blocks:

```
module "keypair-west" {
  source = "../working-with-modules/modules"
  providers = { aws = aws.west
  }

}

module "keypair-east" {
  source = "../working-with-modules/modules"
  providers = { aws = aws.east
  }
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

After the `apply` we will have 2 key pairs created in region `us-east-1` and in region `us-west-2`.

