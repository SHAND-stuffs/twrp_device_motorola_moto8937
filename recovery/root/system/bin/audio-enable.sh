#!/system/bin/sh

ENABLE=$1

#tinymix '     ' $([ "$ENABLE" == 1 ] && echo -n "1" || echo -n "0")

# Enable device specific mixers
case "$(getprop ro.product.device)" in
	"ahannah"|"rhannah"|"aljeter")
		tinymix 'PRI_MI2S_RX Audio Mixer MultiMedia1' $([ "$ENABLE" == 1 ] && echo -n "1" || echo -n "0")
		tinymix "RX3 MIX1 INP1" $([ "$ENABLE" == 1 ] && echo -n "RX1" || echo -n "ZERO")
		tinymix "SPK" $([ "$ENABLE" == 1 ] && echo -n "Switch" || echo -n "ZERO")
		;;
	"jeter")
		tinymix 'QUIN_MI2S_RX Audio Mixer MultiMedia1' $([ "$ENABLE" == 1 ] && echo -n "1" || echo -n "0")
		tinymix 'TAS2560_ALGO_FF_MODULE' $([ "$ENABLE" == 1 ] && echo -n "ENABLE" || echo -n "DISABLE")
		;;
	"montana")
		tinymix 'QUIN_MI2S_RX Audio Mixer MultiMedia1' $([ "$ENABLE" == 1 ] && echo -n "1" || echo -n "0")
		;;
	*)
		log "Could not enable audio, Device is unsupported!"
		exit 1;
		;;
esac

setprop "audio.ready" "$ENABLE"

exit 0
