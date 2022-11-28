.class public interface abstract Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;
.super Ljava/lang/Object;
.source "DebugLoggerDataContract.java"


# virtual methods
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
