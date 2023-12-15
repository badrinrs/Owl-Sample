# The proguard configuration file for the following section is /Users/bsathya/Work/Github/Owl-Sample/Owl/app/test_proguard_rules.pro
-dontwarn com.google.errorprone.annotations.MustBeClosed
# End of content from /Users/bsathya/Work/Github/Owl-Sample/Owl/app/test_proguard_rules.pro
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/50a5a5f2519796f4ca267433da74c7eb/transformed/rules-1.5.0/proguard.txt
# for 'can't find referenced method 'android.app.Instrumentation$ActivityResult execStartActivity' etc
-dontwarn androidx.test.runner.MonitoringInstrumentation

# for 'library class android.test.* extends or implements program class'
-dontwarn android.test.**

# End of content from /Users/bsathya/.gradle/caches/transforms-3/50a5a5f2519796f4ca267433da74c7eb/transformed/rules-1.5.0/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/e550bcd1f51aeebcfff9c7067a2316c2/transformed/espresso-core-3.5.0/proguard.txt
# Common proguard flags for all the espresso libraries.

# ignore 'cannot find java.beans and mockito integration' warnings
-dontwarn org.hamcrest.**

# ignore 'can't find referenced class sun.misc.Unsafe' from guava
-dontwarn androidx.test.espresso.core.deps.guava.**

# ignore 'can't find referenced class javax.lang.model.element.Modifier'
-dontwarn com.squareup.javawriter.JavaWriter

# ignore 'can't find referenced class sun.misc.Unsafe, libcore.io.Memory' from protobuf
-dontwarn androidx.test.espresso.core.deps.protobuf.**

# ignore 'can't find referenced method android.app.Instrumentation' from android.jar
-dontwarn androidx.test.runner.MonitoringInstrumentation

# End of content from /Users/bsathya/.gradle/caches/transforms-3/e550bcd1f51aeebcfff9c7067a2316c2/transformed/espresso-core-3.5.0/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/d0ad8fff6f3faa540ca4b65969a66efa/transformed/runner-1.5.0/proguard.txt
# Proguard flags for the AndroidJUnitRunner library.

# avoid obfuscation of the instrumentation runners and orchestrator
-keepnames class androidx.test.**

# Annotation classes accessed via reflection
-keep class androidx.test.annotation.** { *; }

# for 'can't find referenced method 'android.app.Instrumentation$ActivityResult execStartActivity' etc
-dontwarn androidx.test.runner.MonitoringInstrumentation

# for 'library class android.test.* extends or implements program class'
-dontwarn android.test.**

# for 'can't find referenced class java.lang.management.RuntimeMXBean'
-dontwarn org.junit.rules.DisableOnDebug

# for 'can't find referenced class java.lang.management.ThreadMXBean'
-dontwarn org.junit.internal.runners.statements.FailOnTimeout

# for 'can't find referenced class java.beans.**, easymock, etc
-dontwarn org.hamcrest.**
# End of content from /Users/bsathya/.gradle/caches/transforms-3/d0ad8fff6f3faa540ca4b65969a66efa/transformed/runner-1.5.0/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/58a0c9f84d6e391aceeb202493377d2f/transformed/monitor-1.6.1/proguard.txt
# Proguard flags for the AndroidJUnitRunner library.

# avoid obfuscation of the instrumentation runners and orchestrator
-keepnames class androidx.test.**

# Annotation classes accessed via reflection
-keep class androidx.test.annotation.** { *; }

# for 'can't find referenced method 'android.app.Instrumentation$ActivityResult execStartActivity' etc
-dontwarn androidx.test.runner.MonitoringInstrumentation

# for class com.google.errorprone.annotations.InlineMe is not in the runtime classpath
-dontwarn com.google.errorprone.annotations.InlineMe
# End of content from /Users/bsathya/.gradle/caches/transforms-3/58a0c9f84d6e391aceeb202493377d2f/transformed/monitor-1.6.1/proguard.txt
# The proguard configuration file for the following section is /Users/bsathya/.gradle/caches/transforms-3/8da1748043ba15821b2bd3aa5a38aa6c/transformed/rules/lib/META-INF/proguard/coroutines.pro
# ServiceLoader support
-keepnames class kotlinx.coroutines.test.internal.TestMainDispatcherFactory {}
-keepnames class kotlinx.coroutines.android.AndroidExceptionPreHandler {}
-keepnames class kotlinx.coroutines.android.AndroidDispatcherFactory {}

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# End of content from /Users/bsathya/.gradle/caches/transforms-3/8da1748043ba15821b2bd3aa5a38aa6c/transformed/rules/lib/META-INF/proguard/coroutines.pro
# The proguard configuration file for the following section is <unknown>
-dontoptimize
-keep class * {*;}
-keep interface * {*;}
-keep enum * {*;}
-keepattributes *
# End of content from <unknown>
# The proguard configuration file for the following section is <unknown>
-applymapping "/Users/bsathya/Work/Github/Owl-Sample/Owl/app/build/outputs/mapping/release/mapping.txt"
# End of content from <unknown>