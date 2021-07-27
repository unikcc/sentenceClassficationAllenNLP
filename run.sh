if [ "$1" = "test" ];then
    python -m allennlp evaluate checkpoint/model.tar.gz data/SST2/stsa.binary.test --include-package scripts
else
    rm -rf checkpoint
    python -m allennlp train training_config/basic_bag.jsonnet --serialization-dir checkpoint --include-package scripts
fi

