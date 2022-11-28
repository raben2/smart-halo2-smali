.class public Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;
.super Ljava/lang/Object;
.source "SHGuidanceDisplayStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;
    }
.end annotation


# instance fields
.field public bearing:I

.field public closestPathLocation:Landroid/location/Location;

.field public currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public description:Ljava/lang/String;

.field public deviceInstruction:Ljava/lang/String;

.field public distanceToNextManeuver:I

.field public distanceToThisManeuver:I

.field public hasReachedOfflineModeOrigin:Z

.field public incrementCurrentStep:Z

.field public isStepAnimationNow:Z

.field public nextIndex:I

.field public nextTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

.field public offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

.field public progress:I

.field public roundaboutAngles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public roundaboutExitStreetName:Ljava/lang/String;

.field public thisStreetName:Ljava/lang/String;

.field public thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

.field public typesToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->typesToRemove:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 34
    invoke-static {}, Lbike/smarthalo/navigation/models/NavAngleTurns;->buildEmpty()Lbike/smarthalo/navigation/models/NavAngleTurns;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    .line 35
    invoke-static {}, Lbike/smarthalo/navigation/models/NavAngleTurns;->buildEmpty()Lbike/smarthalo/navigation/models/NavAngleTurns;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->nextTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutAngles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    .line 38
    iput v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    .line 39
    iput v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    .line 40
    iput v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToNextManeuver:I

    .line 41
    iput-boolean v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->incrementCurrentStep:Z

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisStreetName:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->deviceInstruction:Ljava/lang/String;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutExitStreetName:Ljava/lang/String;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTypesToRemoveIntArray()[I
    .locals 3

    .line 53
    iget-object v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->typesToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 55
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 56
    iget-object v2, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->typesToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-static {v2}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->access$000(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
