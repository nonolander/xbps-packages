# This hook removes libtool archives (.la) unless $keep_libtool_archives is set.

hook() {
	if [ -z "$keep_libtool_archives" ]; then
		find ${PKGDESTDIR} -type f -name *.la -delete
	fi
}
