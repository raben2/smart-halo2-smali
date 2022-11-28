.class public interface abstract Lbike/smarthalo/sdk/helpers/DebugLoggerContract;
.super Ljava/lang/Object;
.source "DebugLoggerContract.java"

# interfaces
.implements Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getLogs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract observeNonFatalExceptions()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reportNonFatalException(Ljava/lang/String;Ljava/lang/String;)V
.end method
