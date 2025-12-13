variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "APP" {
    default = "facefusion"
}

variable "RELEASE" {
    default = "3.5.2"
}

variable "RELEASE_SUFFIX" {
    default = ""
}

variable "CU_VERSION" {
    default = "124"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}${RELEASE_SUFFIX}"]
    args = {
        RELEASE = "${RELEASE}"
        PYTHON_VERSION = "3.12"
        INDEX_URL = "https://download.pytorch.org/whl/cu${CU_VERSION}"
        TORCH_VERSION = "2.6.0+cu${CU_VERSION}"
        XFORMERS_VERSION = "0.0.29.post3+cu${CU_VERSION}"
        FACEFUSION_VERSION = "${RELEASE}"
        FACEFUSION_CUDA_VERSION = "12.4"
        RUNPODCTL_VERSION = "v1.14.4"
    }
}
