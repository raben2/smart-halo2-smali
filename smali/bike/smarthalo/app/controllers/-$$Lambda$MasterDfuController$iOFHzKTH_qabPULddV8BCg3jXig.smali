.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;

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

    check-cast p1, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->lambda$getAndObserveDFUAvailability$0(Lbike/smarthalo/app/models/dfu/DfuState;)Lbike/smarthalo/app/models/dfu/DfuAvailability;

    move-result-object p1

    return-object p1
.end method
