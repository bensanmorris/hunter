include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    tensorflow
    VERSION
    "1.15-3"
    URL
    "/home/jk-dockerslave/tensorflow_build/libtensorflow.tar.gz"
    SHA1
    d705103cb0a5723c5a18d4ee1b9ab0677fde5e8a
    )

hunter_pick_scheme(DEFAULT url_sha1_unpack_install)
hunter_download(PACKAGE_NAME tensorflow)

