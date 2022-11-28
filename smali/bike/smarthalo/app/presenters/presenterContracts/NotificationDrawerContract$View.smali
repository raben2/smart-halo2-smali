.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;
.super Ljava/lang/Object;
.source "NotificationDrawerContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(ZZ)V
.end method

.method public abstract onNavigationStateChanged(ZZ)V
.end method

.method public abstract updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateDeviceState(Lbike/smarthalo/app/models/DeviceState;)V
.end method

.method public abstract updateLowBatteryNotification(Z)V
.end method

.method public abstract updateStatusBar(Lbike/smarthalo/app/models/SHSettings;)V
.end method
