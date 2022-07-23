/Users/vsevolodignatev/Desktop/Projects/ton-macos-binaries/crypto/func -SPA -o ./build/proxy-contract.fif stdlib.fc params.fc op-codes.fc proxy-contract.fc

echo '"build/proxy-contract.fif" include 2 boc+>B "build/proxy-contract.boc" B>file' | /Users/vsevolodignatev/Desktop/Projects/ton-macos-binaries/crypto/fift -I /Users/vsevolodignatev/Desktop/Projects/ton/crypto/fift/lib -s

/Users/vsevolodignatev/Desktop/Projects/ton-macos-binaries/crypto/func -SPA -o ./build/minter-contract.fif stdlib.fc params.fc op-codes.fc minter-contract.fc

/Users/vsevolodignatev/Desktop/Projects/ton-macos-binaries/crypto/fift -I ./fift-lib -s build/print-hex.fif

cd build

/Users/vsevolodignatev/Desktop/Projects/ton-macos-binaries/crypto/fift -I ../fift-lib -s deploy-minter.fif
