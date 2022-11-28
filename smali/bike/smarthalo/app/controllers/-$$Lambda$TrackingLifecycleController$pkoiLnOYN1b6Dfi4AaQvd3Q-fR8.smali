.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->lambda$observeConnectionState$1(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
