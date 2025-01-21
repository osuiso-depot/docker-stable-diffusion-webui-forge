#!/bin/bash
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow - values must be quoted and separated by newlines or spaces.
### If you specify gated models you'll need to set environment variables HF_TOKEN and/orf CIVITAI_TOKEN

DISK_GB_REQUIRED=24

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
    "https://github.com/Haoming02/sd-forge-couple"
    "https://github.com/Katsuyuki-Karasawa/stable-diffusion-webui-localization-ja_JP"
    "https://github.com/altoiddealer/--sd-webui-ar-plusplus"
    "https://github.com/hako-mikan/sd-webui-lora-block-weight"
    "https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper"
    # "https://github.com/wkpark/uddetailer.git"
)

CHECKPOINT_MODELS=(
    # "https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
    # "https://huggingface.co/rimOPS/noobBased/resolve/main/noobaiXLNAIXL_vPred10Version.safetensors"
    # "https://huggingface.co/RedRayz/hikari_noob_1.0.0/resolve/main/Hikari_Noob_v-pred_1.0.0.safetensors"
    "https://huggingface.co/rimOPS/IllustriousBased/resolve/main/vxpILXL_v12.safetensors"
    "https://huggingface.co/rimOPS/TESTModels/resolve/main/NDDN3v3_VAE.safetensors"
)

LORA_MODELS=(
    # Illustrious
    # Nipple size slider
    "https://civitai.com/api/download/models/1206518"
    # Bra embellishments enhancer
    "https://civitai.com/api/download/models/924494"
    # Ugly Fat Man
    "https://civitai.com/api/download/models/1122234"
    # Glossy Skin
    "https://civitai.com/api/download/models/1218639"
    # Sagging Breasts
    "https://civitai.com/api/download/models/927604"
    # Euphoria(black serafuku)
    "https://civitai.com/api/download/models/1245821"
    # ハルチカ(Shimizu Minami High School Uniform)
    "https://civitai.com/api/download/models/1084497"
    # 体操服
    "https://civitai.com/api/download/models/1179697"
    # 逆バニー
    "https://civitai.com/api/download/models/995354"
    # Zipper Pull(巨乳に引っかかる)
    # "https://civitai.com/api/download/models/1230125"
    # Retro Gym Shorts
    # "https://civitai.com/api/download/models/1166221"
    # スク水
    # "https://civitai.com/api/download/models/1191090"
    # 腋見せ
    "https://civitai.com/api/download/models/1103791"
    # ブラ見せ
    "https://civitai.com/api/download/models/1130720"
    # Ohogao SDXL
    "https://civitai.com/api/download/models/1192192"
    # フェラ素振り
    "https://civitai.com/api/download/models/1181541"
    # スパイダー騎乗位(Lyco)
    "https://civitai.com/api/download/models/1211700"
    # Side Sex from Back
    "https://civitai.com/api/download/models/1055765"
    # 砧(きぬた) まんぐりSEX
    "https://civitai.com/api/download/models/1183504"
    # だいしゅきホールド
    "https://civitai.com/api/download/models/1166885"
    # doggy style kissing
    "https://civitai.com/api/download/models/1204356"
    # missionary position 吊り橋(腰持ち上げ)
    "https://civitai.com/api/download/models/1202648"
    # 御所車 woman on top(side,定点風)
    "https://civitai.com/api/download/models/1197206"
    # jack-O
    "https://civitai.com/api/download/models/1302043"
    # Silhouette Sex Pony
    "https://civitai.com/api/download/models/929173"
    # SD1.5
    # derum用
    # "https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors"
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    # "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/rimOPS/upscaler/resolve/main/RealESRGAN_x4plus_anime_6B.pth"
    # "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    # "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    # "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    # SDXL
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_canny.safetensors"
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_openpose_anime_v2.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_depth_anime.safetensors"
    # sd15
    # "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15_plus.pth"
    # "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors"
)

function base_config(){
    cd "${WORKSPACE}/stable-diffusion-webui-forge/"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/config.json"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/ui-config.json"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/styles.csv"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/styles_integrated.csv"
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
