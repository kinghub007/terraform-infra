terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../../modules/aws/key_pair/"
  }
}

# AWS key-pair variables
aws_initial_deploy_key_name = "ops_initial_ssh_key"
# AWS only supports RSA keypairs
aws_initial_deploy_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAJr2zXev+FQfEtIzYykbFhD53SB5uyJdh3UPodRXzPmXqxMfkVcLf/RTjcDene+dlCuycG3ApOozTuQAvuemcO+RvLbceqpXUflxlUg+UPWcJDos+2jRWASXdBOfGeCp9KIUoxpG82rHFLJX7v4yBttrVfsk0+FDqk3D8nrQsPsMLdWMy+PlKzvAzYlQwrbXLwSWvXkfoGmoAP0jrdmNLa/JDOtdkmxMIaYqHjerST/2u/OvLOiZQWpoqFRd2XSgGEVG56jtWwCFcyRCrs/62IcpvcBhb3OjRE1nPdWoVwHoemdXvsr93/B3ypQ/QlRxgv5d5KLxzoWlQsUtz85+Uf6Qf1csFnr28LFP/M1XMCTf8R1LR1AYAPsoXZxlrLofajcntFxELZfx04RLLdXITFNzlMwuUoVDIMYi9LRi0ebw0zyHdgYO8VWavRXQeR5sBoQH1mR2e/ycki2/Cm35420N6GF3q4d1NNwica3tPyofchNfEtfFkjHyYhxBSWbP2Js3+TX7+hAmbX8ctYHBjcKU4faZeZwx0ZOKXcELhvWf+0sIi0pKhl58VFySonWqKwmPfYbb0a26QvJD3/NTAdJOEPaMAP9Q9wiK9O1TQ9txRipiEcsX0W+Fg62fMUzhQ36AT57Bvtqz7CB4fUKGM/0QKhZNL2CeJlLy6ztUA5w== planetway-operations@planetway.com"
