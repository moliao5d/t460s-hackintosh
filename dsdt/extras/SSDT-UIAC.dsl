// SSDT-XHC-T460S.dsl
//
// T460s customization for USBInjectAll.kext.
//

DefinitionBlock ("", "SSDT", 2, "hack", "UIAC", 0)
{
    // USBInjectAll configuration
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_9d2f", Package()
            {
                "port-count", Buffer() { 0x10, 0, 0, 0 },
                "ports", Package()
                {
                    "HSP0", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
//                    "HSP1", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x02, 0, 0, 0 },
//                    },
                    "HSP2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x03, 0, 0, 0 },
                    },
                    "HSP3", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x04, 0, 0, 0 },
                    },
//                    "HSP4", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x05, 0, 0, 0 },
//                    },
//                    "HSP5", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x6, 0, 0, 0 },
//                    },
                    "HSP6", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x07, 0, 0, 0 },
                    },
                    "HSP7", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x08, 0, 0, 0 },
                    },
//                    "HSP8", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x09, 0, 0, 0 },
//                    },
//                    "HSP9", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x0a, 0, 0, 0 },
//                    },
//                    "HSPA", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x0b, 0, 0, 0 },
//                    },
//                    "HSPB", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x0c, 0, 0, 0 },
//                    },
                    "SSP0", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x0d, 0, 0, 0 },
                    },
//                    "SSP1", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x0e, 0, 0, 0 },
//                    },
                    "SSP2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x0f, 0, 0, 0 },
                    },
                    "SSP3", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x10, 0, 0, 0 },
                    },
//                    "SSP4", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x11, 0, 0, 0 },
//                    },
//                    "SSP5", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 0x12, 0, 0, 0 },
//                    },
                },
            },
        })
    }
}

//EOF
