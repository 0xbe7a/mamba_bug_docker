eval "$(micromamba shell hook --shell bash)"
echo "Home Config"
cat .condarc -n
echo
echo "Root Config"
cat /opt/conda/.condarc -n
# Uses wrong channel alias
micromamba info
micromamba config get channel_alias
micromamba env create -n test_env_not_base
micromamba activate test_env_not_base
# Uses correct channel alias
micromamba info