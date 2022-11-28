.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$z0Yl9K0ZQ-rnii5oVb3Y-sdGWqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$z0Yl9K0ZQ-rnii5oVb3Y-sdGWqM;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$z0Yl9K0ZQ-rnii5oVb3Y-sdGWqM;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->lambda$getLatestFirmwareBytes$6(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;Lbike/smarthalo/app/models/GenericResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
