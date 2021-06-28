===Powershell===

#Disable participation in CEIP
Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false -Confirm:$false

#disable certificate verification
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

#import module to install workload management
Install-Module -Name VMware.WorkloadManagement -Confirm:$false

#List installed modules
Get-InstalledModule

===Parent Host & VI (and environment)===
 - Have a DNS server available in the lab (bind is good, use webmin for lazy management)
 - Create single node cluster in vcsa (configure network later)
 - Enable DRS (else no support for vApps)
 - Create tanzu vds with two (mgmt and workloads) portgroups
 - Portgroups have unique VLAN id, accept in sercurity settings
 - No connected uplink (portgroups are routed through Vyos).
 - create Vyos VM with three interfaces, in VM Network, in mgmt and in workloads.
 - Configure Vyos routing and your home router.
 - create some VMs in each network and make sure all VM's can ping each other and ping google.com
 



