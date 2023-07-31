KSRC ?= ~/Test/runninglinuxkernel_5.0

CROSS ?= aarch64-linux-gnu-

APP_SRC ?= uio_app.c

TARGET ?= uio_app

all:
	make -C $(KSRC)/ M=$(CURDIR) modules
	${CROSS}gcc ${APP_SRC} -o ${TARGET}
%:
	make -C $(KSRC)/ M=$(CURDIR) $@
