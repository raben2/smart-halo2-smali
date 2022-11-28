.class public Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;
.super Ljava/lang/Object;
.source "MetricsCarouselMask.java"


# static fields
.field private static final MAX_MASK_SIZE:I = 0x10


# instance fields
.field public hasAvgSpeed:Z

.field public hasBattery:Z

.field public hasCO2:Z

.field public hasCalories:Z

.field public hasClock:Z

.field public hasDistance:Z

.field public hasElapsedTime:Z

.field public hasGoal:Z

.field public hasNavigation:Z

.field public hasSpeedometer:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasNavigation:Z

    .line 12
    iput-boolean v0, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasGoal:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasDistance:Z

    .line 14
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasElapsedTime:Z

    .line 15
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasSpeedometer:Z

    .line 16
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasCalories:Z

    .line 17
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasClock:Z

    .line 18
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasAvgSpeed:Z

    .line 19
    iput-boolean v0, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasCO2:Z

    .line 20
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasBattery:Z

    return-void
.end method


# virtual methods
.method public getMask()I
    .locals 4

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasNavigation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasGoal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasDistance:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasElapsedTime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasSpeedometer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasCalories:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasClock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasAvgSpeed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasCO2:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasBattery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 38
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method
