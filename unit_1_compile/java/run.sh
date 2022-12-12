echo 'run simple'
cd ./simple
javac Hello.java
java Hello

cd ../

echo 'run package'
cd ./package
javac homework/first/my/Hello.java
java homework.first.my.Hello

cd ../

echo 'run separate packages'
cd ./separate_packages
javac homework/first/my/Hello.java
java homework.first.my.Hello

cd ../

echo 'run minimal proj'
cd ./minimal_proj
javac -sourcepath ./src -d build/classes ./src/homework/first/my/Hello.java
java -cp build/classes homework.first.my.Hello

cd ../

echo 'run med proj and create simple jar'
cd ./med_proj
javac -sourcepath ./src -d build/classes ./src/homework/first/my/Hello.java
jar cvfm build/jar/hello.jar resources/MANIFEST.MF -C build/classes .
java -jar build/jar/hello.jar

cd ../../

. ./remove-class.sh

