# Deployment
This deployment

## Landing Zone
This deployment assumes that we have a separate AWS accounts for development, production and tools.  A typical landing zone
created from control tower might look like as foolows: 

Account      | Description
-------------|---------------------
Master       | Master account for consolidated billing and setup of child accounts
Audit        | Provides audit control for all accounts
Logging      | Centralized logging of compliance activities across all accounts
Tools        | Git Repositories and CI/CD Pipeline
Dev          | Development Account
Production   | Production account

## DNS

### Zones

Zone                        | Account 
----------------------------|---------------|------------------
dev.{you-domain}            | Dev
{you-domain}                | Production

### Templates

- [dns.yaml](cloudformation/dns/dns.yaml) : Used for setting up DNS Zones in development and production accounts.
- [dns-global-records-prod.yaml](cloudformation/dns/dns-global-records-prod.yaml) : Used for setting up global records used in production
  including Dev Name Server records.





