Instructions:

    # configure your app
    export HUNTER_ROOT=[your hunter root]
    cmake -H. -Bbuild -DHUNTER_STATUS_DEBUG=ON
    
    # build your app
    cd build
    make
    ./example
