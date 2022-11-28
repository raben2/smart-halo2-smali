.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/TrackingController;->lambda$setUpLocationUpdates$0(Ljava/lang/Throwable;)V

    return-void
.end method
