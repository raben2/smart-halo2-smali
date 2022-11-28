.class public interface abstract Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;
.super Ljava/lang/Object;
.source "BleNotificationSourceContract.java"


# virtual methods
.method public abstract observeCarousel()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeDeviceState()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/sdk/models/SHDeviceState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeLight()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/sdk/bluetooth/bleNotifications/LightNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeStmLogs()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeTouch()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observerMovement()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
