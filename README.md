# terraform

terraform.io

## types

1. terraform cli - learning (open source)
2. terraform cloud - best practices , security, complaince
3. terraform enterprise - best practices , security, complaince

# info
1. Providers are nothing but connectors:
   * offical providers are plugins developed by Hashicorp
   * partner providers are plugins developed by partner / company themselves

2. If terraform wants to communicate with AWS API , it uses provider plugins.

    ```console
     terraform binary + provider plugins(aws provider) + authentication
     ```

3. what you want to create is should be in TF-config file
4. state file is a current state file.
5. in planning what needs to be created/updated/distroyed
6. after apply the plan is executed.
7. the language we need write the files are hashicorp configuration language(hcl)
8. HCL blocks:
    * provider block: cloud provider specific info is mentined
        * example: aws region, key pair  
    * resource block : the resources to be created is mentioned here
        * resource "aws_vpc" "example"{


        } 
    * data block : query resource

## commands

1. to install the provider, After we use the format command, we have to initialize our
working directory to prepare it for what we need.
The init command looks at your configuration files and
determines which providers and modules it needs to pull down
from the registry to allow your configuration to work properly

    ```console
    terraform init
    ```

2. to validate the code for syntax error, Once we have initialized the directory, it’s good to run
thevalidate command before you run plan or apply. Validation
will catch syntax errors, version errors, and other issues. One thing
to note here is that you can’t run validate before you run
the init command. You have to initialize the working directory
before you can run the validation. 
   ```console
    terraform validate
    ```
3. When we finish our Terraform configuration, we can make sure that
everything is formatted correctly, run the fmt command first.
This command reformats your configuration in the standard style,
so it’ll make sure that the spacing and everything else is formatted
correctly. If it comes back blank, that means the configuration files
within your working directory are already correctly formatted. If it
does format a file, it will let you know what file it touched. 
   ```console
    terraform fmt
    ```
4. refresh
   ```console
    terraform refresh
    ```
5. plan, Next, it’s always a good idea to do a dry run of your plan to see
what it’s actually going to do. You can even use one of the
subcommands with terraform plan to output your plan to apply
it later. 
   ```console
    terraform plan
    ```
6. apply, And then of course you have your apply command, which is one of
the commands you’re going to use the most. This is the command
that deploys or applies your configuration to a provider. 

   ```console
    terraform apply
    ```
7. destroy, The destroy command, obviously, will destroy your infrastructure
— or, when used with the target flag, individual resources within
your infrastructure. 
   ```console
    terraform destroy
    ```

## tutorial

https://developer.hashicorp.com/terraform/tutorials/aws-get-started