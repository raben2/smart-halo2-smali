.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->lambda$updaterUserDeviceConfigs$7(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
