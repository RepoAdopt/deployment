git clone https://github.com/RepoAdopt/deployment

echo Pulled repoadopt deployment

cd deployment

docker-compose up

echo
echo repoadopt has started. Go to localhost:8080 to access

$SHELL
