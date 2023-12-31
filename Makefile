TARGET = libmodplug.a
OBJS=	tables.o         \
	sndmix.o         \
	sndfile.o        \
	snd_fx.o         \
	snd_flt.o        \
	snd_dsp.o        \
	fastmix.o        \
	load_xm.o        \
	load_wav.o       \
	load_s3m.o       \
	load_mod.o       \
	load_it.o        \
	modplug.o
#	mmcmp.o          \
#	load_umx.o       \
#	load_ult.o       \
#	load_stm.o       \
#	load_ptm.o       \
#	load_okt.o       \
#	load_mtm.o       \
#	load_med.o       \
#	load_mdl.o       \
#	load_far.o       \
#	load_dsm.o       \
#	load_dmf.o       \
#	load_dbm.o       \
#	load_ams.o       \
#	load_amf.o       \
#	load_669.o       \
#	load_j2b.o       \
#	load_mt2.o       \
#	load_psm.o       \

KOS_CFLAGS += -I../include/modplug -DMODPLUG_BASIC_SUPPORT -DFASTSOUNDLIB

defaultall: create_kos_link $(OBJS) subdirs linklib

include $(KOS_BASE)/addons/Makefile.prefab

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/modplug
	ln -s ../libmodplug/include ../include/modplug

