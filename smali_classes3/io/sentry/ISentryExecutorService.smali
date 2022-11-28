.class interface abstract Lio/sentry/ISentryExecutorService;
.super Ljava/lang/Object;
.source "ISentryExecutorService.java"


# virtual methods
.method public abstract close(J)V
.end method

.method public abstract submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method
