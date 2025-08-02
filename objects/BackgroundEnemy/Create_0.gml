event_inherited()

collisionLayer = [];

movementType = MovementType.Still;
movementPeriod = 5; // How many seconds it takes to complete the movement
movementPeriodB = 2; // How many seconds it takes for the secondary movement -- not all movement types use this
movementStrength = 20; // How far it moves, in pixels. This can be the radius, or the length of the line
movementStrengthB = 4; // How far it moves, for the secondary movement

localTime = 0; // Time since we were created. Pauses if time is paused, or if we're stunned
targetPosition = GetPositionVector(id); // Position to move relative to, e.g., the center of our orbit