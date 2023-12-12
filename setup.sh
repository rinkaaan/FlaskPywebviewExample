pip install --upgrade pip

(
  cd FlaskPywebviewExampleReactApp
  npm install
  chmod +x scripts/*.sh
  scripts/gen.sh
  npm run build
)

(
  cd FlaskPywebviewExampleApi
  chmod +x scripts/*.sh
  scripts/install_local_utils.sh
  pip install -r requirements.txt
  scripts/link_react_dist.sh
  scripts/prepare_icons_mac.sh
  scripts/build_mac.sh
)
