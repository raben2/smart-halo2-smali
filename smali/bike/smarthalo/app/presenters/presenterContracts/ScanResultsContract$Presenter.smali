.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;
.super Ljava/lang/Object;
.source "ScanResultsContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
.end method

.method public abstract onNewDevices(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/sdk/models/BleDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;",
            ">;"
        }
    .end annotation
.end method
