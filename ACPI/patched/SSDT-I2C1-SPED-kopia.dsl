/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190405 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of /Volumes/EFI/EFI/CLOVER/ACPI/patched/SSDT-I2C1-SPED.aml, Mon Feb 24 08:29:50 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000E2 (226)
 *     Revision         0x02
 *     Checksum         0x18
 *     OEM ID           "hack"
 *     OEM Table ID     "I2C-SPED"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190405 (538510341)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "I2C-SPED", 0x00000000)
{
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (FMD1, IntObj)
    External (FMH1, IntObj)
    External (FML1, IntObj)
    External (SSD1, IntObj)
    External (SSH1, IntObj)
    External (SSL1, IntObj)

    Scope (_SB.PCI0.I2C1)
    {
        Method (PKGX, 3, Serialized)
        {
            Name (PKG, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PKG, Zero))
            Store (Arg1, Index (PKG, One))
            Store (Arg2, Index (PKG, 0x02))
            Return (PKG) /* \_SB_.PCI0.I2C1.PKGX.PKG_ */
        }

        Method (SSCN, 0, NotSerialized)
        {
            Return (PKGX (SSH1, SSL1, SSD1))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Name (PKG, Package (0x03)
            {
                0x0101, 
                0x012C, 
                0x62
            })
            Return (PKG) /* \_SB_.PCI0.I2C1.FMCN.PKG_ */
        }
    }
}

