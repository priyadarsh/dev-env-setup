# Download and extract
cd /home/user/Downloads
wget https://services.gradle.org/distributions/gradle-4.1-all.zip .
cp /home/user/Downloads/gradle-4.1-all.zip /home/user/tools/gradle-4.1-all.zip
cd /home/user/tools/
unzip gradle-4.1-all.zip
rm -f gradle-4.1-all.zip

#Make entries in ~/.bashrc file or Gradle home and bin 
echo "export GRADLE_HOME=/home/user/tools/gradle-4.1" >> ~/.bashrc
echo "PATH=\$PATH:\$GRADLE_HOME/bin" >> ~/.bashrc
echo "export PATH" >> ~/.bashrc

# or simple use the below line. However it will not install the latest version
#apt install gradle

# set gradle daemon
echo "org.gradle.daemon=true" >> ~/.gradle/gradle.properties
