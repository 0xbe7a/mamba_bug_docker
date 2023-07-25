eval "$(micromamba shell hook --shell bash)"
echo "Home Config"
cat .condarc -n
echo
echo "Root Config"
cat /opt/conda/.condarc -n
# Uses wrong channel alias
echo "micromamba info"
micromamba info
echo "config get channel_alias"
micromamba config get channel_alias
echo "switching to test_env_not_base"
micromamba env create -n test_env_not_base
micromamba activate test_env_not_base
echo "micromamba info"
# Uses correct channel alias
micromamba info