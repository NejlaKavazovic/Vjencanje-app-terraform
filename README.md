# Vjencanje App – Terraform Infrastructure

Terraform konfiguracija za automatsko kreiranje AWS infrastrukture za Vjencanje aplikaciju.

## Pokretanje

### 1. Klonirati repozitorij

```bash
git clone https://github.com/NejlaKavazovic/Vjencanje-app-terraform
cd Vjencanje-app-terraform
```

### 2. Konfigurisati AWS kredencijale

U AWS Academy Sandbox kliknuti na "AWS Details" i kopirati kredencijale, pa ih postaviti:

```bash
aws configure
# AWS Access Key ID: (iz Sandbox)
# AWS Secret Access Key: (iz Sandbox)
# Default region: us-east-1
# Default output format: json
```

Ili eksportovati direktno:

```bash
export AWS_ACCESS_KEY_ID="access_key"
export AWS_SECRET_ACCESS_KEY="secret_key"
export AWS_DEFAULT_REGION="us-east-1"
```

### 3. Inicijalizacija

```bash
terraform init
```

### 4. Pregled plana

```bash
terraform plan
```

### 5. Kreiranje infrastrukture

```bash
terraform apply
```

Upisati `yes` kada pita za potvrdu. 

### 6. Pristup aplikaciji

Nakon što `terraform apply` završi, outputi će prikazati:

```
alb_dns_name     = "http://vjencanje-alb-XXXXXXXX.us-east-1.elb.amazonaws.com"
s3_bucket_name   = "vjencanje-app-static-XXXXXXXX"
rds_endpoint     = "vjencanje-db.XXXXXXXX.us-east-1.rds.amazonaws.com"
ec2_instance_1_ip = "XX.XX.XX.XX"
ec2_instance_2_ip = "XX.XX.XX.XX"
```

Otvoriti `alb_dns_name` u browseru da se pristupi aplikaciji.
