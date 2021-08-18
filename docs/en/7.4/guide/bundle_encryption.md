# Bundle encrypting in RhoMobile

#Overview
We use AES 256 bit encoding (“AES-256-CBC” algorithm string when using OpenSSL library).
We use OpenSSL library for encoding/decoding
Each file in bundle encrypted separately
Developer can specify file extensions for encrypting (some file like images can stay unencrypted because it not secure issue generally)
Bundle encryption supported on iOS and Android only.

#Generate AES key
Run this command for generate AES key:

	:::shell
	rake build:bundle:generate_AES_key

After command finish you can see AES key in output like this:

	:::shell
	Generated AES key is : "3II2MtHXAUPYiaKAF4rpRi/MEfxHfJL22lpFHu8xNGY="

key is base64 format for use as text in build.yml

#Setup application for bundle encrypting
There are two options in build.yml for setup bundle encryption:
`encrypt_files_key`  and `encrypt_file_extensions`.

`encrypt_files_key` is a string with AES key in base64 format

`encrypt_file_extensions` is array with file extensions should be encrypted

Example (iseq extension is compiled ruby (*.rb) and erb(*.erb) files):

	:::yaml
	encrypt_files_key: "5VCv3t4J4y07IlLRqjKQCP0ckA+hif7f4o4IdUHQ2rY="
	encrypt_file_extensions:
	- html
	- js
	- css
	- iseq
	- min-js
