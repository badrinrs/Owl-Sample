# The proguard configuration file for the following section is /Users/bsathya/Work/Github/Owl-Sample/Owl/app/build/intermediates/default_proguard_files/global/proguard-android.txt-8.1.4
# This is a configuration file for ProGuard.
# http://proguard.sourceforge.net/index.html#manual/usage.html
#
# Starting with version 2.2 of the Android plugin for Gradle, this file is distributed together with
# the plugin and unpacked at build-time. The files in $ANDROID_HOME are no longer maintained and
# will be ignored by new version of the Android plugin for Gradle.

# Optimization is turned off by default. Dex does not like code run
# through the ProGuard optimize steps (and performs some
# of these optimizations on its own).
# Note that if you want to enable optimization, you cannot just
# include optimization flags in your own project configuration file;
# instead you will need to point to the
# "proguard-android-optimize.txt" file instead of this one from your
# project.properties file.
-dontoptimize

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose

# Preserve some attributes that may be required for reflection.
-keepattributes AnnotationDefault,
                EnclosingMethod,
                InnerClasses,
                RuntimeVisibleAnnotations,
                RuntimeVisibleParameterAnnotations,
                RuntimeVisibleTypeAnnotations,
                Signature

-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
-keep public class com.google.android.vending.licensing.ILicensingService
-dontnote com.android.vending.licensing.ILicensingService
-dontnote com.google.vending.licensing.ILicensingService
-dontnote com.google.android.vending.licensing.ILicensingService

# For native methods, see http://proguard.sourceforge.net/manual/examples.html#native
-keepclasseswithmembernames,includedescriptorclasses class * {
    native <methods>;
}

# Keep setters in Views so that animations can still work.
-keepclassmembers public class * extends android.view.View {
    void set*(***);
    *** get*();
}

# We want to keep methods in Activity that could be used in the XML attribute onClick.
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

# For enumeration classes, see http://proguard.sourceforge.net/manual/examples.html#enumerations
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keepclassmembers class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

# Preserve annotated Javascript interface methods.
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# The support libraries contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version. We know about them, and they are safe.
-dontnote android.support.**
-dontnote androidx.**
-dontwarn android.support.**
-dontwarn androidx.**

# This class is deprecated, but remains for backward compatibility.
-dontwarn android.util.FloatMath

# Understand the @Keep support annotation.
-keep class android.support.annotation.Keep
-keep class androidx.annotation.Keep

-keep @android.support.annotation.Keep class * {*;}
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <init>(...);
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

# These classes are duplicated between android.jar and org.apache.http.legacy.jar.
-dontnote org.apache.http.**
-dontnote android.net.http.**

# These classes are duplicated between android.jar and core-lambda-stubs.jar.
-dontnote java.lang.invoke.**

# End of content from /Users/bsathya/Work/Github/Owl-Sample/Owl/app/build/intermediates/default_proguard_files/global/proguard-android.txt-8.1.4
# The proguard configuration file for the following section is /Users/bsathya/Work/Github/Owl-Sample/Owl/app/proguard-rules.pro
# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
-renamesourcefileattribute SourceFile

# Repackage classes into the top-level.
-repackageclasses

# This is generated automatically by the Android Gradle plugin.
-dontwarn org.bouncycastle.jsse.BCSSLParameters
-dontwarn org.bouncycastle.jsse.BCSSLSocket
-dontwarn org.bouncycastle.jsse.provider.BouncyCastleJsseProvider
-dontwarn org.conscrypt.Conscrypt$Version
-dontwarn org.conscrypt.Conscrypt
-dontwarn org.conscrypt.ConscryptHostnameVerifier
-dontwarn org.openjsse.javax.net.ssl.SSLParameters
-dontwarn org.openjsse.javax.net.ssl.SSLSocket
-dontwarn org.openjsse.net.ssl.OpenJSSE
# End of content from /Users/bsathya/Work/Github/Owl-Sample/Owl/app/proguard-rules.pro
# The proguard configuration file for the following section is /Users/bsathya/Work/Github/Owl-Sample/Owl/app/build/intermediates/aapt_proguard_file/release/aapt_rules.txt
-keep class androidx.core.app.CoreComponentFactory { <init>(); }
-keep class androidx.profileinstaller.ProfileInstallReceiver { <init>(); }
-keep class androidx.startup.InitializationProvider { <init>(); }
-keep class com.example.owl.OwlApplication { <init>(); }
-keep class com.example.owl.ui.MainActivity { <init>(); }

# End of content from /Users/bsathya/Work/Github/Owl-Sample/Owl/app/build/intermediates/aapt_proguard_file/release/aapt_rules.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/989039143ec88561ed45a6901c6a53d2/transformed/navigation-common-2.7.5/proguard.txt
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NavArgsLazy creates NavArgs instances using reflection
-if public class ** implements androidx.navigation.NavArgs
-keepclassmembers public class <1> {
    ** fromBundle(android.os.Bundle);
}

# Retain the @Navigator.Name annotation on each subclass of Navigator.
# R8 full mode only retains annotations on items matched by a -keep rule,
# hence the extra -keep rule for the subclasses of Navigator.
#
# A -keep rule for the Navigator.Name annotation class is not required
# since the annotation is referenced from the code.
-keepattributes RuntimeVisibleAnnotations
-keep,allowobfuscation,allowshrinking class * extends androidx.navigation.Navigator

# End of content from /Users/bsathya/.gradle/caches/transforms-3/989039143ec88561ed45a6901c6a53d2/transformed/navigation-common-2.7.5/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/a340c44ab117cd3d7bfd2e411e7ac3ae/transformed/savedstate-1.2.1/proguard.txt
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

-keepclassmembers,allowobfuscation class * implements androidx.savedstate.SavedStateRegistry$AutoRecreated {
    <init>();
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/a340c44ab117cd3d7bfd2e411e7ac3ae/transformed/savedstate-1.2.1/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/5eb4901c98ec6ee36ed643df6f92b384/transformed/lifecycle-process-2.6.2/proguard.txt
# this rule is need to work properly when app is compiled with api 28, see b/142778206
-keepclassmembers class * extends androidx.lifecycle.EmptyActivityLifecycleCallbacks { *; }
# End of content from /Users/bsathya/.gradle/caches/transforms-3/5eb4901c98ec6ee36ed643df6f92b384/transformed/lifecycle-process-2.6.2/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/484f3ddd110db3b060f5e51d25923b04/transformed/lifecycle-viewmodel-2.6.2/proguard.txt
-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.ViewModel {
    <init>();
}

-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.AndroidViewModel {
    <init>(android.app.Application);
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/484f3ddd110db3b060f5e51d25923b04/transformed/lifecycle-viewmodel-2.6.2/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/671ce2d535d755d44837a80233458fa8/transformed/lifecycle-viewmodel-savedstate-2.6.2/proguard.txt
-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.ViewModel {
    <init>(androidx.lifecycle.SavedStateHandle);
}

-keepclassmembers,allowobfuscation class * extends androidx.lifecycle.AndroidViewModel {
    <init>(android.app.Application,androidx.lifecycle.SavedStateHandle);
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/671ce2d535d755d44837a80233458fa8/transformed/lifecycle-viewmodel-savedstate-2.6.2/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/feca418c15fb8412179f4bb037c5e174/transformed/vectordrawable-animated-1.1.0/proguard.txt
# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# keep setters in VectorDrawables so that animations can still work.
-keepclassmembers class androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$* {
   void set*(***);
   *** get*();
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/feca418c15fb8412179f4bb037c5e174/transformed/vectordrawable-animated-1.1.0/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/ce625eff20943fe8a57b55bcca73273b/transformed/core-1.13.0-alpha01/proguard.txt
# Never inline methods, but allow shrinking and obfuscation.
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.view.ViewCompat$Api* {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.view.WindowInsetsCompat$*Impl* {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.app.NotificationCompat$*$Api*Impl {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.os.UserHandleCompat$Api*Impl {
  <methods>;
}
-keepclassmembernames,allowobfuscation,allowshrinking class androidx.core.widget.EdgeEffectCompat$Api*Impl {
  <methods>;
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/ce625eff20943fe8a57b55bcca73273b/transformed/core-1.13.0-alpha01/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/ddcf0aa654d6a4765bf9609a4feb8346/transformed/lifecycle-runtime-2.6.2/proguard.txt
-keepattributes AnnotationDefault,
                RuntimeVisibleAnnotations,
                RuntimeVisibleParameterAnnotations,
                RuntimeVisibleTypeAnnotations

-keepclassmembers enum androidx.lifecycle.Lifecycle$Event {
    <fields>;
}

-keep !interface * implements androidx.lifecycle.LifecycleObserver {
}

-keep class * implements androidx.lifecycle.GeneratedAdapter {
    <init>(...);
}

-keepclassmembers class ** {
    @androidx.lifecycle.OnLifecycleEvent *;
}

# this rule is need to work properly when app is compiled with api 28, see b/142778206
# Also this rule prevents registerIn from being inlined.
-keepclassmembers class androidx.lifecycle.ReportFragment$LifecycleCallbacks { *; }
# End of content from /Users/bsathya/.gradle/caches/transforms-3/ddcf0aa654d6a4765bf9609a4feb8346/transformed/lifecycle-runtime-2.6.2/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/ce081ad8afaa91e15e4395c143e2f7ba/transformed/ui-release/proguard.txt
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# We supply these as stubs and are able to link to them at runtime
# because they are hidden public classes in Android. We don't want
# R8 to complain about them not being there during optimization.
-dontwarn android.view.RenderNode
-dontwarn android.view.DisplayListCanvas

-keepclassmembers class androidx.compose.ui.platform.ViewLayerContainer {
    protected void dispatchGetDisplayList();
}

-keepclassmembers class androidx.compose.ui.platform.AndroidComposeView {
    android.view.View findViewByAccessibilityIdTraversal(int);
}

# Users can create Modifier.Node instances that implement multiple Modifier.Node interfaces,
# so we cannot tell whether two modifier.node instances are of the same type without using
# reflection to determine the class type. See b/265188224 for more context.
-keep,allowshrinking class * extends androidx.compose.ui.node.ModifierNodeElement

# End of content from /Users/bsathya/.gradle/caches/transforms-3/ce081ad8afaa91e15e4395c143e2f7ba/transformed/ui-release/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/f2a3261f9803bccaf69915fc97ac8935/transformed/runtime-release/proguard.txt
-assumenosideeffects public class androidx.compose.runtime.ComposerKt {
    void sourceInformation(androidx.compose.runtime.Composer,java.lang.String);
    void sourceInformationMarkerStart(androidx.compose.runtime.Composer,int,java.lang.String);
    void sourceInformationMarkerEnd(androidx.compose.runtime.Composer);
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/f2a3261f9803bccaf69915fc97ac8935/transformed/runtime-release/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/af19833d02e85e0ae5a59f88f0513b7c/transformed/rules/lib/META-INF/com.android.tools/r8/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/proguard/coroutines.pro
# - META-INF/com.android.tools/proguard/coroutines.pro

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
# End of content from /Users/bsathya/.gradle/caches/transforms-3/af19833d02e85e0ae5a59f88f0513b7c/transformed/rules/lib/META-INF/com.android.tools/r8/coroutines.pro
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/67227cbf48c87c83b467ff168e6d955c/transformed/rules/lib/META-INF/com.android.tools/r8-from-1.6.0/coroutines.pro
# Allow R8 to optimize away the FastServiceLoader.
# Together with ServiceLoader optimization in R8
# this results in direct instantiation when loading Dispatchers.Main
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatcherLoader {
    boolean FAST_SERVICE_LOADER_ENABLED return false;
}

-assumenosideeffects class kotlinx.coroutines.internal.FastServiceLoaderKt {
    boolean ANDROID_DETECTED return true;
}

# Disable support for "Missing Main Dispatcher", since we always have Android main dispatcher
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatchersKt {
    boolean SUPPORT_MISSING return false;
}

# Statically turn off all debugging facilities and assertions
-assumenosideeffects class kotlinx.coroutines.DebugKt {
    boolean getASSERTIONS_ENABLED() return false;
    boolean getDEBUG() return false;
    boolean getRECOVER_STACK_TRACES() return false;
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/67227cbf48c87c83b467ff168e6d955c/transformed/rules/lib/META-INF/com.android.tools/r8-from-1.6.0/coroutines.pro
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/78db8180f9de3e9e3dabd986e5fb6e7a/transformed/rules/lib/META-INF/proguard/okhttp3.pro
# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**

# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# OkHttp platform used only on JVM and when Conscrypt and other security providers are available.
-dontwarn okhttp3.internal.platform.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**

# End of content from /Users/bsathya/.gradle/caches/transforms-3/78db8180f9de3e9e3dabd986e5fb6e7a/transformed/rules/lib/META-INF/proguard/okhttp3.pro
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/83ac176880f54b8f816a29a9efed569f/transformed/rules/lib/META-INF/proguard/okio.pro
# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# End of content from /Users/bsathya/.gradle/caches/transforms-3/83ac176880f54b8f816a29a9efed569f/transformed/rules/lib/META-INF/proguard/okio.pro
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/1dc89fdf045da067c98e627863eeeb15/transformed/versionedparcelable-1.1.1/proguard.txt
-keep class * implements androidx.versionedparcelable.VersionedParcelable
-keep public class android.support.**Parcelizer { *; }
-keep public class androidx.**Parcelizer { *; }
-keep public class androidx.versionedparcelable.ParcelImpl

# End of content from /Users/bsathya/.gradle/caches/transforms-3/1dc89fdf045da067c98e627863eeeb15/transformed/versionedparcelable-1.1.1/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/36ccc440d72288524f9299156ee886c6/transformed/startup-runtime-1.1.1/proguard.txt
# It's important that we preserve initializer names, given they are used in the AndroidManifest.xml.
-keepnames class * extends androidx.startup.Initializer

# These Proguard rules ensures that ComponentInitializers are are neither shrunk nor obfuscated,
# and are a part of the primary dex file. This is because they are discovered and instantiated
# during application startup.
-keep class * extends androidx.startup.Initializer {
    # Keep the public no-argument constructor while allowing other methods to be optimized.
    <init>();
}

-assumenosideeffects class androidx.startup.StartupLogger { public static <methods>; }

# End of content from /Users/bsathya/.gradle/caches/transforms-3/36ccc440d72288524f9299156ee886c6/transformed/startup-runtime-1.1.1/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/945b2bffbcc682c6955643b73d2ad89d/transformed/rules/lib/META-INF/proguard/androidx-annotations.pro
-keep,allowobfuscation @interface androidx.annotation.Keep
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

-keepclassmembers,allowobfuscation class * {
  @androidx.annotation.DoNotInline <methods>;
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/945b2bffbcc682c6955643b73d2ad89d/transformed/rules/lib/META-INF/proguard/androidx-annotations.pro
# The proguard configuration file for the following section is <unknown>

# End of content from <unknown>