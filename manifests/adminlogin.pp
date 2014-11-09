class windows::adminlogin {
  # The Auto Admin Logon must be deleted. Compliant if the instance count of this registry value less than 1.
  registry::value { 'no_admin_login':
    key   => 'HKLM\Software\Microsoft\Windows NT\CurrentVersion\winlogon',
    value => 'AutoAdminLogon',
    type  => 'dword',
    data  => '0',
  }

}
