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
-keep class androidx.tracing.Trace {*;}
-keep class kotlin.LazyKt {*;}
-keep class kotlin.jvm.internal.Intrinsics {*;}
-keep class kotlinx.coroutines.JobKt {*;}
-keep class * {
 public *** complete();
 public static java.lang.String hintOnError(kotlinx.coroutines.internal.MainDispatcherFactory);
 public static kotlinx.coroutines.MainCoroutineDispatcher tryCreateDispatcher(kotlinx.coroutines.internal.MainDispatcherFactory, java.util.List);
 public static kotlinx.coroutines.channels.Channel *(kotlinx.coroutines.channels.BufferOverflow, kotlin.jvm.functions.Function1, java.lang.Object);
}
-keep class kotlinx.coroutines.Dispatchers {
    public static kotlinx.coroutines.MainCoroutineDispatcher getMain();
}
-keep class kotlinx.coroutines.internal.MainDispatcherLoader {*;}
-keep class kotlinx.coroutines.CoroutineScopeKt {
    public static kotlinx.coroutines.CoroutineScope *(kotlin.coroutines.CoroutineContext);
}