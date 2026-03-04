PKG_NAME=user-linux-naylor-clib-deb-repo
PKG_VERSION=1.0
BUILD_DIR=build_package
TERMUX_PATH=data/data/com.termux/files/usr

package:
	# Limpa e cria pastas
	rm -rf $(BUILD_DIR)
	mkdir -p $(BUILD_DIR)/DEBIAN
	mkdir -p $(BUILD_DIR)/$(TERMUX_PATH)/bin
	
	# Prepara arquivos
	cp DEBIAN/control $(BUILD_DIR)/DEBIAN/
	cp src/clib.sh $(BUILD_DIR)/$(TERMUX_PATH)/bin/clib
	chmod +x $(BUILD_DIR)/$(TERMUX_PATH)/bin/clib
	
	# Gera o .deb e o índice Packages para o APT
	dpkg-deb --build $(BUILD_DIR) $(PKG_NAME)_$(PKG_VERSION)_all.deb
	dpkg-scanpackages . /dev/null > Packages

clean:
	rm -rf $(BUILD_DIR) *.deb Packages

