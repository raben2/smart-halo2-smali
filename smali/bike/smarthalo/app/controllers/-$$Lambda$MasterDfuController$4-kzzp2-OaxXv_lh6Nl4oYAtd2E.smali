.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/MasterDfuController;

.field private final synthetic f$1:Lbike/smarthalo/sdk/models/FirmwareType;

.field private final synthetic f$2:Lbike/smarthalo/sdk/models/DeviceInformation;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/MasterDfuController;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;->f$0:Lbike/smarthalo/app/controllers/MasterDfuController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;->f$1:Lbike/smarthalo/sdk/models/FirmwareType;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;->f$2:Lbike/smarthalo/sdk/models/DeviceInformation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;->f$0:Lbike/smarthalo/app/controllers/MasterDfuController;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;->f$1:Lbike/smarthalo/sdk/models/FirmwareType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;->f$2:Lbike/smarthalo/sdk/models/DeviceInformation;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->lambda$checkNordicAvailability$1(Lbike/smarthalo/app/controllers/MasterDfuController;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
