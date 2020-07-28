include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    tensorflow
    VERSION
    "1.15-3"
    URL
    "/home/ben/dev/tensorflow_build/tensorflow.zip"
    SHA1
    7d8e4cfcf9addafcc3e0620985c429372830c0ad
)

hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME tensorflow)

