          ///////////////////////////////////////////////////////////////////////////////
//
// File Name: ntperm.h
//
// Description: Header file for ntperm.rul
//
// Comments: #include this file (ntperm.h) around the top of
// Setup.rul (where the other header files are included) and
// this file's corresponding rul file (ntperm.rul) at
// the end.
//
// Author: Klaus Ewinger, Ruf Informatik AG (klaus.ewinger@ruf.ch)
//
//
///////////////////////////////////////////////////////////////////////////////

// Windows NT Security
#define DACL_SECURITY_INFORMATION 0x00000004
#define GENERIC_ALL 0x10000000
#define NO_INHERITANCE 0x0
#define SUB_CONTAINERS_AND_OBJECTS_INHERIT 0x3
#define SE_FILE_OBJECT 1
#define SE_PRINTER 3
#define SE_REGISTRY_KEY 4
#define TRUSTEE_IS_SID 0
#define TRUSTEE_IS_UNKNOWN 0
#define NO_MULTIPLE_TRUSTEE 0
#define SET_ACCESS 2


// Windows Security: TRUSTEE structure
typedef TRUSTEE
begin
POINTER pMultipleTrustee;
LONG MultipleTrusteeOperation;
LONG TrusteeForm;
LONG TrusteeType;
POINTER ptstrName; 
end;

// Windows Security: EXPLICIT_ACCESS structure
typedef EXPLICIT_ACCESS
begin
NUMBER grfAccessPermissions;
LONG grfAccessMode;
NUMBER grfInheritance;
TRUSTEE Trustee; 
end;

// Windows Security: SID_IDENTIFIER_AUTHORITY
typedef SID_IDENTIFIER_AUTHORITY
begin
CHAR Value1;
CHAR Value2;
CHAR Value3;
CHAR Value4;
CHAR Value5;
CHAR Value6;
end;

// Windows Security
prototype LONG advapi32.GetNamedSecurityInfoA(BYREF STRING, LONG, LONG, POINTER, POINTER, POINTER, POINTER, POINTER);
prototype LONG advapi32.SetNamedSecurityInfoA(BYREF STRING, LONG, LONG, POINTER, POINTER, POINTER, POINTER);
prototype LONG advapi32.SetEntriesInAclA(LONG, POINTER, POINTER, POINTER);
prototype LONG advapi32.AllocateAndInitializeSid(POINTER, CHAR, LONG, LONG, LONG, LONG, LONG, LONG, LONG, LONG, POINTER);
prototype LONG advapi32.FreeSid(LONG);

// Common Windows API
prototype LONG KERNEL.LocalFree(HWND);

// Function prototypes 
prototype GrantFullAccess(BYVAL STRING, BYVAL LONG, BYVAL BOOL);
prototype GrantFullRegAccess(BYVAL NUMBER, BYVAL STRING);
