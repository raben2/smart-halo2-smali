.class public Lbike/smarthalo/app/models/SHGoal;
.super Lio/realm/RealmObject;
.source "SHGoal.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;


# static fields
.field public static final TYPE_CALORIE_GOAL:I = 0x3

.field public static final TYPE_CO2_GOAL:I = 0x4

.field public static final TYPE_DISTANCE_GOAL:I = 0x1

.field public static final TYPE_NO_GOAL:I = -0x1

.field public static final TYPE_SPEED_GOAL:I = 0x2

.field public static final TYPE_TIME_GOAL:I


# instance fields
.field public goal:Ljava/lang/Double;

.field public hasShownCompletionAnimation:Z
    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field

.field public hasShownIntroAnimation:Z

.field public id:I

.field public isActive:Z

.field public isCompleted:Z

.field public nextProgress:I

.field public previousProgress:D

.field public progress:D

.field public timestamp:Ljava/lang/Long;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$timestamp(Ljava/lang/Long;)V

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$type(I)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isCompleted(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isActive(Z)V

    .line 32
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$hasShownIntroAnimation(Z)V

    .line 34
    iput-boolean v0, p0, Lbike/smarthalo/app/models/SHGoal;->hasShownCompletionAnimation:Z

    return-void
.end method


# virtual methods
.method public getGoal()Ljava/lang/Double;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getNextProgress()I
    .locals 1

    .line 86
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$nextProgress()I

    move-result v0

    return v0
.end method

.method public getPreviousProgress()D
    .locals 2

    .line 82
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$previousProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()D
    .locals 2

    .line 78
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 70
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result v0

    return v0
.end method

.method public realmGet$goal()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHGoal;->goal:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$hasShownIntroAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHGoal;->hasShownIntroAnimation:Z

    return v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHGoal;->id:I

    return v0
.end method

.method public realmGet$isActive()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHGoal;->isActive:Z

    return v0
.end method

.method public realmGet$isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHGoal;->isCompleted:Z

    return v0
.end method

.method public realmGet$nextProgress()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHGoal;->nextProgress:I

    return v0
.end method

.method public realmGet$previousProgress()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHGoal;->previousProgress:D

    return-wide v0
.end method

.method public realmGet$progress()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHGoal;->progress:D

    return-wide v0
.end method

.method public realmGet$timestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHGoal;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHGoal;->type:I

    return v0
.end method

.method public realmSet$goal(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHGoal;->goal:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$hasShownIntroAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHGoal;->hasShownIntroAnimation:Z

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHGoal;->id:I

    return-void
.end method

.method public realmSet$isActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHGoal;->isActive:Z

    return-void
.end method

.method public realmSet$isCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHGoal;->isCompleted:Z

    return-void
.end method

.method public realmSet$nextProgress(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHGoal;->nextProgress:I

    return-void
.end method

.method public realmSet$previousProgress(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHGoal;->previousProgress:D

    return-void
.end method

.method public realmSet$progress(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHGoal;->progress:D

    return-void
.end method

.method public realmSet$timestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHGoal;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHGoal;->type:I

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isActive(Z)V

    return-void
.end method

.method public setCompleted(Z)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isCompleted(Z)V

    return-void
.end method

.method public setGoal(Ljava/lang/Double;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$goal(Ljava/lang/Double;)V

    return-void
.end method

.method public setNextProgress(I)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$nextProgress(I)V

    return-void
.end method

.method public setPreviousProgress(D)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    return-void
.end method

.method public setProgress(D)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$type(I)V

    return-void
.end method
