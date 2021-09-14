echo "Apigateway is building..."
cd ../Apigateway && ./gradlew clean build
echo "Apigateway build completed!\n\n"

echo "TransactionManager is building..."
cd ../TransactionManager && ./gradlew clean build
echo "TransactionManager build completed!\n\n"

echo "UserManager is building..."
cd ../UserManager && ./gradlew clean build
echo "UserManager build completed!\n\n"

echo "VerificationManager is building..."
cd ../VerificationManager && ./gradlew clean build
echo "VerificationManager build completed!\n\n"
