path_install := env('PATH_INSTALL', '')
path_lib     := path_install / "lib"
path_plugins := path_lib / "python3/dist-packages/ansible/plugins/callback"

all:
    @echo "Copy Plugins"
    mkdir -p "{{path_plugins}}"
    chmod 0755 -R "{{path_lib}}"
    cp -t "{{path_plugins}}" \
        "callbacks/anstomlog.py" \
        "callbacks/anstomlog-tiny.py"
    chmod 0644 "{{path_plugins}}"/*.py
