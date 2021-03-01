/// @description Distribute power

piloting.consolePower += powerToPiloting;
artillery.consolePower += powerToArtillery;
navigation.consolePower += powerToNavigation;

powerToPiloting = 0;
powerToArtillery = 0;
powerToNavigation = 0;

currentReactorPower = availablePower;