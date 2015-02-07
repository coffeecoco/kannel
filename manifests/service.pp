class kannel::service {
        service { 'kannel':
                ensure          => running,
                name            => 'kannel',
                hasstatus       => false,
                hasrestart      => true,
        }       
}