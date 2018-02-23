# Class: ta_auditd::inputs
# ===========================
#
# Configure inputs for ta_auditd
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `input_disabled`
# Whether the input for audit logs from this server should be disabled in the
# splunk forwarder
#
# * `index`
# Which splunk index audit logs from this server should be forwarded to
#
# Authors
# -------
#
# Berin Smaldon <noodels555@gmail.com>
#
class ta_auditd::inputs (
  Boolean $disabled = false,
  String $index
){

  file { '/opt/splunkforwarder/etc/apps/TA_linux-auditd/local/inputs.conf':
    ensure  => present,
    content => template('ta_auditd/inputs.conf.erb'),
    owner   => 'splunk',
    group   => 'splunk',
    notify  => Service['splunkforwarder']
  }

}
