.class public final synthetic Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;

    invoke-direct {v0}, Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;-><init>()V

    sput-object v0, Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;->INSTANCE:Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;

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

    check-cast p1, Lbike/smarthalo/app/models/DeviceState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/DeviceState;->isLowBattery()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
