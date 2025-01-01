#!/bin/bash
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow - values must be quoted and separated by newlines or spaces.
### If you specify gated models you'll need to set environment variables HF_TOKEN and/orf CIVITAI_TOKEN

DISK_GB_REQUIRED=30

APT_PACKAGES=(
    #"package-1"
    #"package-2"
    "aria2"
)

PIP_PACKAGES=(
    "onnxruntime-gpu"
)

EXTENSIONS=(
    # "https://github.com/deforum-art/sd-webui-deforum"
    "https://github.com/adieyal/sd-dynamic-prompts"
    "https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    "https://github.com/hako-mikan/sd-webui-regional-prompter"
    "https://github.com/Coyote-A/ultimate-upscale-for-automatic1111"
    "https://github.com/mcmonkeyprojects/sd-dynamic-thresholding"
    "https://github.com/Katsuyuki-Karasawa/stable-diffusion-webui-localization-ja_JP"
    "https://github.com/altoiddealer/--sd-webui-ar-plusplus"
    "https://github.com/hako-mikan/sd-webui-lora-block-weight"
    # "https://github.com/DenOfEquity/forgeFlux_dualPrompt"
    "https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper"
)

CHECKPOINT_MODELS=(
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
    # "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    # "https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
    # "https://huggingface.co/rimOPS/noobBased/resolve/main/noobaiXLNAIXL_vPred10Version.safetensors"
    "https://huggingface.co/RedRayz/hikari_noob_1.0.0/resolve/main/Hikari_Noob_v-pred_1.0.0.safetensors"
    "https://huggingface.co/rimOPS/IllustriousBased/resolve/main/vxpILXL_v12.safetensors"
)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
    # noob vpred
    "https://civitai.com/api/download/models/1152003?type=Model&format=SafeTensor"
    # Illustrious
    # single hair bun
    "https://civitai.com/api/download/models/1223585?type=Model&format=SafeTensor"
    # セーラー服
    "https://civitai.com/api/download/models/1222575?type=Model&format=SafeTensor"
    # 体操服
    "https://civitai.com/api/download/models/1179697?type=Model&format=SafeTensor"
    # Retro Gym Shorts
    "https://civitai.com/api/download/models/1166221?type=Model&format=SafeTensor"
    # スク水
    "https://civitai.com/api/download/models/1191090?type=Model&format=SafeTensor"
    # スポーツブラ
    "https://civitai.com/api/download/models/1166210?type=Model&format=SafeTensor"
    # 貝殻ビキニ
    "https://civitai.com/api/download/models/1183296?type=Model&format=SafeTensor"
    # Reverse bunny suits
    "https://civitai.com/api/download/models/995354?type=Model&format=SafeTensor"
    # Bra embellishments enhancer
    "https://civitai.com/api/download/models/924494?type=Model&format=SafeTensor"
    # 裸リボン(lying)
    "https://civitai.com/api/download/models/1168946?type=Model&format=SafeTensor"
    # パイスラッシュ
    "https://civitai.com/api/download/models/1179899?type=Model&format=SafeTensor"
    # 隣の女の子
    "https://civitai.com/api/download/models/1190625?type=Model&format=SafeTensor"
    # [concept] 4 Finger Heart Hands
    "https://civitai.com/api/download/models/1063667?type=Model&format=SafeTensor"
    # Top Off(腕クロス脱ぎかけ)
    "https://civitai.com/api/download/models/1014511?type=Model&format=SafeTensor"
    # 胸ちら(後ろから)
    "https://civitai.com/api/download/models/1191686?type=Model&format=SafeTensor"
    # ぶりっ子ポーズ
    "https://civitai.com/api/download/models/1190425?type=Model&format=SafeTensor"
    # 腕組
    "https://civitai.com/api/download/models/1056528?type=Model&format=SafeTensor"
    # うずくまる-丸まる
    "https://civitai.com/api/download/models/1168677?type=Model&format=SafeTensor"
    # One-arm push-up
    "https://civitai.com/api/download/models/1132005?type=Model&format=SafeTensor"
    # 泡風呂
    "https://civitai.com/api/download/models/1060187?type=Model&format=SafeTensor"
    # Aru's Shocked Face
    "https://civitai.com/api/download/models/1064292?type=Model&format=SafeTensor"
    # Spread Armpit
    "https://civitai.com/api/download/models/1103791?type=Model&format=SafeTensor"
    # 臭いチェック
    "https://civitai.com/api/download/models/1144981?type=Model&format=SafeTensor"
    # Bed Invitation
    "https://civitai.com/api/download/models/1149696?type=Model&format=SafeTensor"
    # Showing the lining of the bra
    "https://civitai.com/api/download/models/1130720?type=Model&format=SafeTensor"
    # Self Suck
    "https://civitai.com/api/download/models/1015748?type=Model&format=SafeTensor"
    # [Pov] After Kiss
    "https://civitai.com/api/download/models/1087076?type=Model&format=SafeTensor"
    # from behind breast press top-down bottom-up
    "https://civitai.com/api/download/models/1102220?type=Model&format=SafeTensor"
    # Ohogao SDXL
    "https://civitai.com/api/download/models/1192192"
    # Silhouette Sex Pony
    "https://civitai.com/api/download/models/929173"
    # Ugly Fat Man
    "https://civitai.com/api/download/models/1122234?type=Model&format=SafeTensor"
    # Open Towel
    "https://civitai.com/api/download/models/1154680?type=Model&format=SafeTensor"
    # Paizuri Invitation
    "https://civitai.com/api/download/models/1044024?type=Model&format=SafeTensor"
    # Gliding Paizuri
    "https://civitai.com/api/download/models/975923?type=Model&format=SafeTensor"
    # フェラ素振り(指で輪っか)
    "https://civitai.com/api/download/models/1181541?type=Model&format=SafeTensor"
    # 踏みちん (LyCORIS)
    "https://civitai.com/api/download/models/1200583?type=Model&format=SafeTensor"
    # [Pov] FootWorship
    "https://civitai.com/api/download/models/1171421?type=Model&format=SafeTensor"
    # POV Lying on Viewer Handjob/Blowjob + Fingering
    "https://civitai.com/api/download/models/1084837?type=Model&format=SafeTensor"
    # POV Thighjob on Top
    "https://civitai.com/api/download/models/1086822?type=Model&format=SafeTensor"
    # Lying on Lap Blowjob
    "https://civitai.com/api/download/models/1065263?type=Model&format=SafeTensor"
    # 車内フェラ
    "https://civitai.com/api/download/models/1187892?type=Model&format=SafeTensor"
    # Vacuum Fellatio
    "https://civitai.com/api/download/models/1069442?type=Model&format=SafeTensor"
    # Reverse nursing Handjob
    "https://civitai.com/api/download/models/1145452?type=Model&format=SafeTensor"
    # cum on hands
    "https://civitai.com/api/download/models/1182735?type=Model&format=SafeTensor"
    # 素股
    "https://civitai.com/api/download/models/1170084?type=Model&format=SafeTensor"
    # 隠姦(ドア)
    "https://civitai.com/api/download/models/1205243?type=Model&format=SafeTensor"
    # 駅弁
    "https://civitai.com/api/download/models/1158089?type=Model&format=SafeTensor"
    # 獅子舞い
    "https://civitai.com/api/download/models/1158271?type=Model&format=SafeTensor"
    # Side Sex from Back
    "https://civitai.com/api/download/models/1055765?type=Model&format=SafeTensor"
    # 砧(きぬた) まんぐりSEX
    "https://civitai.com/api/download/models/1183504?type=Model&format=SafeTensor"
    # だいしゅきホールド
    "https://civitai.com/api/download/models/1166885?type=Model&format=SafeTensor"
    # doggy style kissing
    "https://civitai.com/api/download/models/1204356?type=Model&format=SafeTensor"
    # 乳首舐めスパイダー騎乗位(NoobAI-XL V-Pread 1.0)
    "https://civitai.com/api/download/models/1208616?type=Model&format=SafeTensor"
    # missionary position 吊り橋(腰持ち上げ)
    "https://civitai.com/api/download/models/1202648?type=Model&format=SafeTensor"
    # 御所車 woman on top(side,定点風)
    "https://civitai.com/api/download/models/1197206?type=Model&format=SafeTensor"
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
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/kohya_controllllite_xl_canny.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors?download"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)


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
    provisioning_get_extensions
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"

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
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -P "$2" "$1"
    fi
}

provisioning_start
