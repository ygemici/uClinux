#
# (C) Tenable Network Security
#
# This plugin text was extracted from Mandrake Linux Security Advisory MDKSA-2005:215
#


if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(20447);
 script_version ("$Revision: 1.1 $");
 script_cve_id("CVE-2005-1704");
 
 name["english"] = "MDKSA-2005:215: binutils";
 
 script_name(english:name["english"]);
 
 desc["english"] = "
The remote host is missing the patch for the advisory MDKSA-2005:215 (binutils).



Integer overflows in various applications in the binutils package may allow
attackers to execute arbitrary code via a carefully crafted object file. The
updated packages have been patched to help address these problems.



Solution : http://wwwnew.mandriva.com/security/advisories?name=MDKSA-2005:215
Risk factor : High";



 script_description(english:desc["english"]);
 
 summary["english"] = "Check for the version of the binutils package";
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2006 Tenable Network Security");
 family["english"] = "Mandrake Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Mandrake/rpm-list");
 exit(0);
}

include("rpm.inc");
if ( rpm_check( reference:"binutils-2.15.90.0.3-1.2.101mdk", release:"MDK10.1", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"libbinutils2-2.15.90.0.3-1.2.101mdk", release:"MDK10.1", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"libbinutils2-devel-2.15.90.0.3-1.2.101mdk", release:"MDK10.1", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"binutils-2.15.92.0.2-6.2.102mdk", release:"MDK10.2", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"libbinutils2-2.15.92.0.2-6.2.102mdk", release:"MDK10.2", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"libbinutils2-devel-2.15.92.0.2-6.2.102mdk", release:"MDK10.2", yank:"mdk") )
{
 security_hole(0);
 exit(0);
}
if (rpm_exists(rpm:"binutils-", release:"MDK10.1")
 || rpm_exists(rpm:"binutils-", release:"MDK10.2") )
{
 set_kb_item(name:"CVE-2005-1704", value:TRUE);
}
