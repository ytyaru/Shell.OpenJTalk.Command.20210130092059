#!/bin/bash
Run() { # aplayだとwav以外で雑音になってしまうため、mplayerを使う
	local cmd='mplayer'
	local SCRIPT_DIR="$(cd $(dirname "$0"); pwd)"
	"$SCRIPT_DIR/installer.sh" "$cmd"
	"$cmd" "$1"
}
Run "$@"

