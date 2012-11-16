define shorewall::tcrule(
    $ensure = present,
    $mark,
    $source,
    $destination,
    $proto = '-',
    $destinationport = '-',
    $sourceport = '-',
    $user = '-',
    $test = '',
    $length = '',
    $tos = '',
    $connbytes = '',
    $helper = '',
    $order
){
    shorewall::entry{"tcrules-${order}-${name}":
        ensure => $ensure,
        line => "# ${name}\n${mark}\t${source}\t${destination}\t${proto}\t${destinationport}\t${sourceport}\t${user}\t${test}\t${length}\t${tos}\t${connbytes}\t${helper}",
    }
}
