for i in $*
do
echo "echo $i 1>&2"
echo "cat >$i<<END"
cat $i
echo "END"
done
