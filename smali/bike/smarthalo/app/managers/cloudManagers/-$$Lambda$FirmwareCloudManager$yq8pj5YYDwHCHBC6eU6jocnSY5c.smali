.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;->f$1:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->lambda$getLatestFirmware$2(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;Ljava/lang/String;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object p1

    return-object p1
.end method
