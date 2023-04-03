# enable hardware acceleration in nvidia GPUs
export LIBVA_DRIVER_NAME=nvidia

# force use GBM as backend https://wiki.archlinux.org/title/Wayland#Requirements
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

# Controls if Adaptive Sync should be used. Recommended to set as “0” to avoid having problems on some
export __GL_VRR_ALLOWED=0

# use nvidia for wayland session
export IS_NVIDIA=false
if [ "$(tty)" = "/dev/tty1" ]; then
	if [ $IS_NVIDIA ]; then
		prime-run Hyprland
	else
		Hyprland
	fi
fi

usenvidia() {
	stat="$1"
	if [ "$stat" = "" ]; then
		echo "No parameter provided (true/false)"
		return
	else
		sed s/'IS_NVIDIA=false'/'IS_NVIDIA=false'/g -i $MY_SCRIPTS/hyprland/init.sh
	fi
}