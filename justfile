dry-run:
    ob run benchmark -b Clustering_conda.yml --local-storage --dry-run

run:
    ob run benchmark -b Clustering_conda.yml --local-storage --cores 4

pull:
    git pull

rerun:
    just pull && just run

recheck:
    just pull && just dry-run

push:
    git add . && git commit -m "update" && git push