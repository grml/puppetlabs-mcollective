# private class
class mcollective::server::service {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  if ! defined(Service['mcollective']) {
      service { 'mcollective':
      ensure => 'running',
      enable => true,
      }
  }
}
