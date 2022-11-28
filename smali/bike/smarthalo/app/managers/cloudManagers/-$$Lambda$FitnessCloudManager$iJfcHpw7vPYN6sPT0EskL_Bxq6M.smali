.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;

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

    check-cast p1, Lbike/smarthalo/app/models/CloudRide;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$onStravaManualUploadResponse$4(Lbike/smarthalo/app/models/CloudRide;)Lbike/smarthalo/app/models/StravaUploadResult;

    move-result-object p1

    return-object p1
.end method
