# Overview

I'm trying to change the tint of the `NSVisualEffectView`. This is what I've come up with. Send me a pull request if you know a better way.

![Tintend visual effect view](https://raw.github.com/boyvanamstel/https://github.com/boyvanamstel/NSVisualEffectView-Tint/master/screenshots/tinted-visual-effect-view.png)

# Tinting

1. Add a new `NSVisualEffectView` to your main window.
2. Enable layer backing.
3. Loop through the layers and change the `backgroundColor` of the layer called 'ClearCopyLayer'.

No science behind this method.

# Known Issues

Changing the `material`from light to dark or vice versa removes the custom `backgroundColor`. Even if it's applied after changing the `material`.

# License

MIT License, see `LICENSE` for details.
