.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;

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

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->lambda$updateCloudConfigsWithLocalValues$14(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
