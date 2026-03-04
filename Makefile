PKG_NAME=user-linux-naylor-clib-deb-repo
PKG_VERSION=1.0
BUILD_DIR=build_package
TERMUX_PATH=data/data/com.termux/files/usr

package:
	# 1.
	rm -rf $(BUILD_DIR)
	mkdir -p $(BUILD_DIR)/DEBIAN
	mkdir -p $(BUILD_DIR)/$(TERMUX_PATH)/bin
	
	# 2. 
	chmod 755 $(BUILD_DIR)/DEBIAN

	# 3. 
	cp DEBIAN/control $(BUILD_DIR)/DEBIAN/
	cp src/clib.sh $(BUILD_DIR)/$(TERMUX_PATH)/bin/clib
	chmod +x $(BUILD_DIR)/$(TERMUX_PATH)/bin/clib
	
	# 4. 
	dpkg-deb --build $(BUILD_DIR) $(PKG_NAME)_$(PKG_VERSION)_all.deb
	apt-ftparchive packages . > Packages

