var alpha = spawnTimer.ElapsedTimePercent();
direction = alpha * 1000;
image_xscale = clamp(alpha * 2, 0, 1) * 0.5;
image_yscale = clamp(alpha * 2, 0, 1) * 0.5;
image_alpha = alpha;