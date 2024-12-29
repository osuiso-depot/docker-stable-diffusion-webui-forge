#!/bin/false

source /opt/ai-dock/etc/environment.sh

build_common_main() {
    # Nothing to do
    :
}

build_common_install_forge() {
    # 最新のブランチ（main）のHEADを取得
    if [[ -z $FORGE_BUILD_REF ]]; then
        export FORGE_BUILD_REF="main" # デフォルトでmainブランチを指定
        env-store FORGE_BUILD_REF
    fi

    cd /opt
    # すでに存在する場合は削除してからクローン
    [ -d stable-diffusion-webui-forge ] && rm -rf stable-diffusion-webui-forge
    git clone https://github.com/lllyasviel/stable-diffusion-webui-forge
    cd /opt/stable-diffusion-webui-forge

    # 最新のコードに切り替え（タグではなくmainブランチを利用）
    git checkout "$FORGE_BUILD_REF"
    git pull origin "$FORGE_BUILD_REF" # 最新状態に更新

    # 必要な依存関係をインストール
    "$FORGE_VENV_PIP" install --no-cache-dir -r requirements_versions.txt
}


build_common_run_tests() {
    installed_pytorch_version=$("$FORGE_VENV_PYTHON" -c "import torch; print(torch.__version__)")
    echo "Checking PyTorch version contains ${PYTORCH_VERSION}..."
    if [[ "$installed_pytorch_version" != "$PYTORCH_VERSION"* ]]; then
        echo "Expected PyTorch ${PYTORCH_VERSION} but found ${installed_pytorch_version}\n"
        exit 1
    fi
    echo "Found PyTorch ${PYTORCH_VERSION}. Success!"
}

build_common_main "$@"
