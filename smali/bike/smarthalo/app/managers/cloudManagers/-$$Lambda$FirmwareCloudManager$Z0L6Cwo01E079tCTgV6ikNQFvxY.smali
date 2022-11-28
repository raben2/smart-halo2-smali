.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->lambda$getLatestFirmwareBytes$4(Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object p1

    return-object p1
.end method
