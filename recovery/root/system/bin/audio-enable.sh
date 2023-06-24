#!/system/bin/sh

ENABLE=$1

#tinymix '     ' $([ "$ENABLE" == 1 ] && echo -n "1" || echo -n "0")

# Enable BE DAI
tinymix 'PRI_MI2S_RX Audio Mixer MultiMedia1' $([ "$ENABLE" == 1 ] && echo -n "1" || echo -n "0")

# Enable device specific mixers
case "$(getprop ro.product.device)" in
	"hannah")
		tinymix "RX3 MIX1 INP1" $([ "$ENABLE" == 1 ] && echo -n "RX1" || echo -n "ZERO")
		tinymix "SPK" $([ "$ENABLE" == 1 ] && echo -n "Switch" || echo -n "ZERO")
		;;
	*)
		log "Could not enable audio, Device is unsupported!"
		exit 1;
		;;
esac

setprop "audio.ready" "$ENABLE"

exit 0
