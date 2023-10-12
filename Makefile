#KSRC ?= /lib/modules/$(shell uname -r)/build
KSRC ?= ~/Test/debug_linux_5.0_arm64/


APP_SRC ?= uio_app.c

TARGET ?= uio_app

CROSS ?= aarch64-linux-gnu-

all:
	make -C $(KSRC)/ M=$(CURDIR) modules
	gcc ${APP_SRC} -o ${TARGET}
%:
	make -C $(KSRC)/ M=$(CURDIR) $@
