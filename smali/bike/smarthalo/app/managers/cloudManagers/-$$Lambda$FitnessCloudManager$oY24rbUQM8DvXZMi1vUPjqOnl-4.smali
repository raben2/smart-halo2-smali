.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;

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

    check-cast p1, Lbike/smarthalo/app/models/CloudRide;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$updateRide$6(Lbike/smarthalo/app/models/CloudRide;)V

    return-void
.end method
