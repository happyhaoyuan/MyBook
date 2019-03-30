for param in $*
do
export $param
done

ssh <service B> mkdir -p .ssh
cat .ssh/id_rsa.pub | ssh <service B> 'cat >> .ssh/authorized_keys'
chmod 700 .ssh
chmod 640 .ssh/authorized_keys

alias getf_from='f(){i="$1";j="$2";scp <from_address>:${i} ${j};};f'
alias getd_from='f(){i="$1";j="$2";scp -r <from_address>:${i} ${j};};f'
alias passf_to='f(){i="$1";j="$2";scp ${i} <to_address>:${j};};f'
alias passd_to='f(){i="$1";j="$2";scp -r ${i} <to_address>:${j};};f'
alias ssh='ssh -o ServerAliveInterval=60'

export SPARK_HOME=.../spark-2.3.x-bin-hadoop2.x
export PATH=$PATH:$SPARK_HOME:$SPARK_HOME/bin
%SPARK_HOME%\bin //For Windows, add this to `envrionment variable`