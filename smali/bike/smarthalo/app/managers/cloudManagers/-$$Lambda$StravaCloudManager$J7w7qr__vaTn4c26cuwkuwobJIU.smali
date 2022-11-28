.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;

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

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$refreshStravaTokens$3(Ljava/lang/Throwable;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    move-result-object p1

    return-object p1
.end method
