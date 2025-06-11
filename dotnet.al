dotnet
{
    assembly(GetNAVIPAddress)
    {
        type(GetNAVIPAddress.GetIPMac; GetIPMac) { }
    }
    assembly(System)
    {
        type(System.Net.IPAddress; IPAddress) { }
        type(System.Net.Dns; Dns) { }
        type(System.Net.IPHostEntry; IPHostEntry) { }

    }
    assembly(LoginActiveDirectory)
    {
        type(LoginActiveDirectory.ActiveDirectory; LoginAuth) { }
    }
    assembly(DataEncryption)
    {
        type(DataEncryption.EncodeString; EncodeString) { }
    }
    assembly(SslBypassHttpClientBC)
    {
        type(SslBypassHttpClientBC.BypassSSLcertificatevalidation; BypassSSLcertificatevalidation) { }
    }


    assembly(System)
    {
        type(System.Diagnostics.Process; Process) { }
        type(System.Diagnostics.ProcessStartInfo; ProcessStartInfo) { }


    }
    assembly(System)
    {
        type(System.Net.NetworkInformation.NetworkInterface; NetworkInterface) { }

        type("System.Net.NetworkInformation.UnicastIPAddressInformation"; "UnicastIPAddressInformation") { }
        // type("System.Net.Http.WebRequest"; "WebRequest") { }

    }

    // assembly(System.Web)
    // {
    //     type("System.Web.HttpRequest"; HttpRequest) { }
    // }

}
