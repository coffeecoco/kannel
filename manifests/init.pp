# Class: kannel_smpp
#
# This module manages kannel_smpp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

  class kannel {
        include kannel::install, kannel::config, kannel::service
        Class['base'] -> Class['kannel::install'] -> Class['kannel::config'] -> Class['kannel::service']
}
