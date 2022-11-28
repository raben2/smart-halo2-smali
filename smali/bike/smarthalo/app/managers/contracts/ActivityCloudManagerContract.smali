.class public interface abstract Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;
.super Ljava/lang/Object;
.source "ActivityCloudManagerContract.java"


# virtual methods
.method public abstract sendConnectionActivity(Lbike/smarthalo/sdk/models/DeviceInformation;Ljava/lang/String;Lbike/smarthalo/app/models/DeviceState;)Lio/reactivex/Single;
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/models/DeviceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/sdk/models/DeviceInformation;",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/models/DeviceState;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
