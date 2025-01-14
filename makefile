FLUTTER=flutter
DEVICE=$(word 2, $(MAKECMDGOALS))

ifeq ($(DEVICE), macos)
	DEVICE_ID=macos
else ifeq ($(DEVICE), ios)
	DEVICE_ID=C1AD75B5-B723-4AA7-A23D-359107F1556E
else
	@echo "Error: Unknown device. Please use 'macos' or 'ios'"
	exit 1
endif

sim:
ifeq ($(DEVICE), ios)
	open -a simulator
	@echo "waiting for ios simulator to boot..."
	@while ! xcrun simctl list devices | grep -q "(Booted)"; do \
		sleep 1; \
	done
endif
	$(FLUTTER) run -d $(DEVICE_ID)