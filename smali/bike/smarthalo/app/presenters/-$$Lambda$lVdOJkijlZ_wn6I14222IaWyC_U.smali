.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;

    invoke-direct {v0}, Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;-><init>()V

    sput-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lbike/smarthalo/app/models/DeviceOwnershipState;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/models/DeviceOwnershipState;-><init>(ZZ)V

    return-object v0
.end method
