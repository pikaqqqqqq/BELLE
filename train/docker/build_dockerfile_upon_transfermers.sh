export https_proxy=...
export http_proxy=...
export all_proxy=...

wget https://raw.githubusercontent.com/huggingface/transformers/main/docker/transformers-pytorch-deepspeed-latest-gpu/Dockerfile -O transformers.dockerfile
docker build --network host --build-arg HTTP_PROXY=$http_proxy -t transformers:ds -f transformers.dockerfile .
docker build --network host --build-arg HTTP_PROXY=$http_proxy -t belle:$(date +%Y%m%d) -f belle.dockerfile .
