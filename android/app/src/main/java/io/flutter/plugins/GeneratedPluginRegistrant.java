

package io.flutter.plugins;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static <PluginRegistry> void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
  }

  private static <PluginRegistry> boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    ((Object) registry).registrarFor(key);
    return false;
  }
}
