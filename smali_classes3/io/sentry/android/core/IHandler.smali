.class interface abstract Lio/sentry/android/core/IHandler;
.super Ljava/lang/Object;
.source "IHandler.java"


# annotations
.annotation build Lorg/jetbrains/annotations/TestOnly;
.end annotation


# virtual methods
.method public abstract getThread()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract post(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
