## Basic Infra on AWS Cloud

Components:
- EC2 (within *docker*, *docker-compose* and *python3.7*)
- Route53

The terraform environment must be initialized:
```bash
> terraform init
```

Setting up your variables in `variables.tf` and use the following command to deploy:
```
> terraform plan
> terraform apply
```
