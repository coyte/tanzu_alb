$vSphereWithTanzuParams = @{
    TanzuvCenterServer = "tanzu-vcsa-1.nilab.io";
    TanzuvCenterServerUsername = "administrator@vsphere.local";
    TanzuvCenterServerPassword = "Admin@123";
    ClusterName = "Workload-Cluster";
    TanzuContentLibrary = "Tanzu Lib";
    ControlPlaneSize = "TINY";
    MgmtNetworkStartIP = "172.17.33.190";
    MgmtNetworkSubnet = "255.255.255.0";
    MgmtNetworkGateway = "172.17.33.1";
    MgmtNetworkDNS = @("10.0.8.1");
    MgmtNetworkDNSDomain = "nilab.io";
    MgmtNetworkNTP = @("10.0.8.1");
    WorkloadNetworkStartIP = "172.17.32.160";
    WorkloadNetworkIPCount = 8;
    WorkloadNetworkSubnet = "255.255.255.0";
    WorkloadNetworkGateway = "172.17.32.1";
    WorkloadNetworkDNS = @("10.0.8.1");
    WorkloadNetworkServiceCIDR = "10.96.0.0/24";
    StoragePolicyName = "tanzu-gold-storage-policy";
    NSXALBIPAddress = "172.17.33.9";
    NSXALBPort = "443";
    NSXALBCertName = "nsx-alb"
    NSXALBUsername = "admin";
    NSXALBPassword = "Admin@123";
}
New-WorkloadManagement3 @vSphereWithTanzuParams
