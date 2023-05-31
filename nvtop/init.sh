# see VGA load status
alias intel='doas intel_gpu_top'
alias nvidia='doas nvtop'
alias intel-run='__NV_PRIME_RENDER_OFFLOAD=0'
alias nvidia-run='__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia'
