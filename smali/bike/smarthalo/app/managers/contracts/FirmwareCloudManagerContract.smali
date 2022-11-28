.class public interface abstract Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;
.super Ljava/lang/Object;
.source "FirmwareCloudManagerContract.java"


# virtual methods
.method public abstract getLatestFirmware(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLatestFirmwareBytes(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract getLatestFirmwareBytes(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/sdk/models/FirmwareType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract getLatestFirmwareInfo(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/sdk/models/FirmwareType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/LatestFirmwareInfo;",
            ">;>;"
        }
    .end annotation
.end method
