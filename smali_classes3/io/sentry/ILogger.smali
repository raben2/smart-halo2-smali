.class public interface abstract Lio/sentry/ILogger;
.super Ljava/lang/Object;
.source "ILogger.java"


# virtual methods
.method public abstract isEnabled(Lio/sentry/SentryLevel;)Z
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
