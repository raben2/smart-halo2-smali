.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;

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

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$checkActivityAvailability$9(Ljava/lang/Throwable;)Lbike/smarthalo/app/api/strava/StravaRideResponse;

    move-result-object p1

    return-object p1
.end method
