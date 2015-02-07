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
        include kannel::install, kannel::vars, kannel::service
        Class['base'] -> Class['kannel::install'] -> Class['kannel::vars'] -> Class['kannel::service']
}
