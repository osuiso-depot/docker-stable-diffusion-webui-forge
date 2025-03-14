#!/bin/bash
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow - values must be quoted and separated by newlines or spaces.
### If you specify gated models you'll need to set environment variables HF_TOKEN and/orf CIVITAI_TOKEN

DISK_GB_REQUIRED=15

APT_PACKAGES=(
    #"package-1"
    #"package-2"
    # "aria2"
)

PIP_PACKAGES=(
    "onnxruntime-gpu"
)

EXTENSIONS=(
    # "https://github.com/deforum-art/sd-webui-deforum"
    # "https://github.com/Tok/sd-forge-deforum.git"
    "https://github.com/adieyal/sd-dynamic-prompts"
    # "https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    # "https://github.com/Haoming02/sd-forge-couple"
    "https://github.com/Katsuyuki-Karasawa/stable-diffusion-webui-localization-ja_JP"
    "https://github.com/altoiddealer/--sd-webui-ar-plusplus"
    "https://github.com/hako-mikan/sd-webui-lora-block-weight"
    "https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper"
    "https://github.com/DominikDoom/a1111-sd-webui-tagcomplete"
    "https://github.com/Bing-su/adetailer"
    # "https://github.com/Zyin055/Config-Presets"
)

CHECKPOINT_MODELS=(
    "https://huggingface.co/rimOPS/IllustriousBased/resolve/main/vxpILXL_v12.safetensors"
    # "https://huggingface.co/rimOPS/IllustriousBased/resolve/main/vxpILXL_v17.safetensors"
    # "https://huggingface.co/rimOPS/TESTModels/resolve/main/NDDN3v3_VAE.safetensors"
    # "https://huggingface.co/rimOPS/TESTModels/resolve/main/NELLv2_VAE.safetensors"
)

LORA_MODELS=(
    # Illustrious
    # Areola size slider(goofy)
    "https://civitai.com/api/download/models/1284363"
    # Ohogao SDXL
    "https://civitai.com/api/download/models/1192192"
    # フェラ素振り((CONCEPT) Fellatio gesture with finger circle / フェラ素振り(指で輪っか) (Illustrious))
    "https://civitai.com/api/download/models/1181541"
    # Silhouette Sex
    "https://civitai.com/api/download/models/1500681"
    # The after show (Illustrious)
    "https://civitai.com/api/download/models/1258330"
    # 逆バニー
    "https://civitai.com/api/download/models/995354"
    # セントルイス衣装(セレブoutfit)
    "https://civitai.com/api/download/models/1110753"
    ## Roxanne
    "https://civitai.com/api/download/models/1055954"
    ## Ryza
    "https://civitai.com/api/download/models/1098852"
    ## 穂月かえで
    "https://civitai.com/api/download/models/1166377"
    ## イドラ・アーヴォルン
    # "https://civitai.com/api/download/models/1448213"
    ## めぐる
    # "https://civitai.com/api/download/models/1065346"
    ## まの
    "https://civitai.com/api/download/models/1053983"
    ## ヴェルメイ
    # "https://civitai.com/api/download/models/1352696"
    # loratest
    "https://huggingface.co/rimOPS/IllustriousBased_Lora_own/resolve/main/gafutncsh_ai_v1b.safetensors"
    # mbojisan
    "https://huggingface.co/rimOPS/IllustriousBased_Lora_own/resolve/main/mbojisan_v3.safetensors"
    "https://huggingface.co/rimOPS/IllustriousBased_Lora_own/resolve/main/mbojisan_v4.safetensors"
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    # "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/rimOPS/upscaler/resolve/main/RealESRGAN_x4plus_anime_6B.pth"
    "https://huggingface.co/rimOPS/upscaler/resolve/main/4x_NMKD-YandereNeoXL_200k.pth"
    # "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    # "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    # "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    # SDXL
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_canny.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_openpose_anime_v2.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_depth_anime.safetensors"
    # sd15
    # "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15_plus.pth"
    # "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors"
)

function base_config(){
    # cd "${WORKSPACE}/stable-diffusion-webui-forge/embeddings"
    # wget -q "https://huggingface.co/rimOPS/embeddings/resolve/main/EasyNegative.pt"

    cd "${WORKSPACE}/stable-diffusion-webui-forge/"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/config.json"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/ui-config.json"
}

function extensions_config() {
    # まず、$WORKSPACE 内に tmp フォルダを作成
    mkdir -p "${WORKSPACE}/tmp"
    if [ $? -ne 0 ]; then
        echo "Failed to create tmp directory"
    fi

    # tmp フォルダに移動
    cd "${WORKSPACE}/tmp"
    if [ $? -ne 0 ]; then
        echo "Failed to change directory to tmp"
    fi

    # リポジトリをクローン
    git clone "https://${GITHUB_TOKEN}@github.com/osuiso-depot/MySDWEBUI_config_private.git"
    if [ $? -ne 0 ]; then
        echo "Failed to clone repository"
    fi

    # クローンしたリポジトリがある場所に移動
    cd "${WORKSPACE}/tmp/MySDWEBUI_config_private"
    if [ $? -ne 0 ]; then
        echo "Failed to change directory to cloned repository"
    fi

    # wildcards フォルダを目的のディレクトリに移動
    mv "wildcards" "${WORKSPACE}/stable-diffusion-webui-forge/extensions/sd-dynamic-prompts/"
    if [ $? -ne 0 ]; then
        echo "Failed to move wildcards directory"
    fi

    # Lora-block-weight プリセットを目的のディレクトリに移動
    mv "lbwpresets.txt" "${WORKSPACE}/stable-diffusion-webui-forge/extensions/sd-webui-lora-block-weight/scripts"
    if [ $? -ne 0 ]; then
        echo "Failed move lbwpresets.txt"
    fi

    # styles.csv を目的のディレクトリに移動
    mv "styles.csv" "${WORKSPACE}/stable-diffusion-webui-forge"
    mv "styles_integrated.csv" "${WORKSPACE}/stable-diffusion-webui-forge"
    if [ $? -ne 0 ]; then
        echo "Failed move styles.csv"
    fi


}



### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    # We need to apply some workarounds to make old builds work with the new default
    if [[ ! -d /opt/environments/python ]]; then
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh webui

    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_pip_packages
    base_config
    provisioning_get_extensions
    provisioning_get_models \
        "${WORKSPACE}/stable-diffusion-webui-forge/models/Stable-diffusion/" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/stable-diffusion-webui-forge/models/Lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/stable-diffusion-webui-forge/models/ControlNet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/stable-diffusion-webui-forge/models/VAE" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/stable-diffusion-webui-forge/models/ESRGAN" \
        "${ESRGAN_MODELS[@]}"

    extensions_config

    PLATFORM_ARGS=""
    if [[ $XPU_TARGET = "CPU" ]]; then
        PLATFORM_ARGS="--use-cpu all --skip-torch-cuda-test --no-half"
    fi
    PROVISIONING_ARGS="--skip-python-version-check --no-download-sd-model --do-not-download-clip --port 11404 --exit"
    ARGS_COMBINED="${PLATFORM_ARGS} $(cat /etc/forge_args.conf) ${PROVISIONING_ARGS}"

    # Start and exit because webui will probably require a restart
    cd /opt/stable-diffusion-webui-forge
        source "$FORGE_VENV/bin/activate"
        LD_PRELOAD=libtcmalloc.so python launch.py \
            ${ARGS_COMBINED}
        deactivate


    provisioning_print_end
}

function pip_install() {
    "$FORGE_VENV_PIP" install --no-cache-dir "$@"
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_extensions() {
    for repo in "${EXTENSIONS[@]}"; do
        dir="${repo##*/}"
        path="/opt/stable-diffusion-webui-forge/extensions/${dir}"
        if [[ -d $path ]]; then
            # Pull only if AUTO_UPDATE
            if [[ ${AUTO_UPDATE,,} == "true" ]]; then
                printf "Updating extension: %s...\n" "${repo}"
                ( cd "$path" && git pull )
            fi
        else
            printf "Downloading extension: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi

    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}


# Download from $1 URL to $2 file path
function provisioning_download() {
    # 認証トークンを選択
    if [[ $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
        if [[ -n $auth_token ]]; then
            echo "Downloading with token..."
            wget --header="Authorization: Bearer $auth_token" --content-disposition --show-progress -q -P "$2" "$1"
        else
            echo "Downloading without token..."
            wget --content-disposition --show-progress -q -P "$2" "$1"
        fi
    elif [[ $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|/api/download/models/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
        if [[ -n $auth_token ]]; then
            echo "Downloading with token..."
            wget "$1?token=$auth_token" --content-disposition --show-progress -q -P "$2"
        else
            echo "Downloading without token..."
            wget "$1" --content-disposition --show-progress -q -P "$2"
        fi
    fi

}

provisioning_start
