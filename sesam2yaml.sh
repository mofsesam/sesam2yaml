mkdir output
mkdir output/node
mkdir output/node/pipes
mkdir output/node/systems
mkdir output/node/variables
ls -1d node/pipes/*.json |parallel -j6 ./sesam-pipes2yaml.sh {.} output/{//}/{/.}
ls -1d node/systems/*.json |parallel -j6 ./sesam-json2yaml.sh {.} output/{//}/{/.}
ls -1d node/variables/*.json |parallel -j6 ./sesam-json2yaml.sh {.} output/{//}/{/.}
