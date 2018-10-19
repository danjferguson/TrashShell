# Run this after you have setup your local environment to bypass the certificate warnings
# http://www.pragmaticio.com/2015/01/vmware-powercli-suppress-vcenter-certificate-warnings/

Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$flase