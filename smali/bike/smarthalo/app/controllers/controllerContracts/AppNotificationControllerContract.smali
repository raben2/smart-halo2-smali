.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;
.super Ljava/lang/Object;
.source "AppNotificationControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract getAndObserveHasNotification()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
