.class public Lbike/smarthalo/app/models/LifetimeMetrics;
.super Ljava/lang/Object;
.source "LifetimeMetrics.java"


# instance fields
.field private adjustedTotalTrips:I

.field private avgCalories:F

.field private avgClimb:F

.field private avgCo2:F

.field private avgDistance:F

.field private avgSpeed:F

.field private avgTime:F

.field private highestCalories:I

.field private highestClimb:F

.field private highestCo2:I

.field private longestDistance:F

.field private longestTrip:I

.field private totalCalories:I

.field private totalClimb:F

.field private totalCo2:F

.field private totalDistance:F

.field private totalMilliseconds:I


# direct methods
.method public constructor <init>(IFIFFFFFFFIFIFFII)V
    .locals 2

    move-object v0, p0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 24
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalMilliseconds:I

    move v1, p2

    .line 25
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgTime:F

    move v1, p3

    .line 26
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->longestTrip:I

    move v1, p4

    .line 27
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalDistance:F

    move v1, p5

    .line 28
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgDistance:F

    move v1, p6

    .line 29
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->longestDistance:F

    move v1, p7

    .line 30
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgSpeed:F

    move v1, p8

    .line 31
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalClimb:F

    move v1, p9

    .line 32
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgClimb:F

    move v1, p10

    .line 33
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestClimb:F

    move v1, p11

    .line 34
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalCalories:I

    move v1, p12

    .line 35
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgCalories:F

    move v1, p13

    .line 36
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestCalories:I

    move/from16 v1, p14

    .line 37
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalCo2:F

    move/from16 v1, p15

    .line 38
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgCo2:F

    move/from16 v1, p16

    .line 39
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestCo2:I

    move/from16 v1, p17

    .line 40
    iput v1, v0, Lbike/smarthalo/app/models/LifetimeMetrics;->adjustedTotalTrips:I

    return-void
.end method


# virtual methods
.method public getAdjustedTotalTrips()I
    .locals 1

    .line 172
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->adjustedTotalTrips:I

    return v0
.end method

.method public getAvgCalories()F
    .locals 1

    .line 132
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgCalories:F

    return v0
.end method

.method public getAvgClimb()F
    .locals 1

    .line 108
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgClimb:F

    return v0
.end method

.method public getAvgCo2()F
    .locals 1

    .line 156
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgCo2:F

    return v0
.end method

.method public getAvgDistance()F
    .locals 1

    .line 76
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgDistance:F

    return v0
.end method

.method public getAvgSpeed()F
    .locals 1

    .line 92
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgSpeed:F

    return v0
.end method

.method public getAvgTime()F
    .locals 1

    .line 52
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgTime:F

    return v0
.end method

.method public getHighestCalories()I
    .locals 1

    .line 140
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestCalories:I

    return v0
.end method

.method public getHighestClimb()F
    .locals 1

    .line 116
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestClimb:F

    return v0
.end method

.method public getHighestCo2()I
    .locals 1

    .line 164
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestCo2:I

    return v0
.end method

.method public getLongestDistance()F
    .locals 1

    .line 84
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->longestDistance:F

    return v0
.end method

.method public getLongestTrip()I
    .locals 1

    .line 60
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->longestTrip:I

    return v0
.end method

.method public getTotalCalories()I
    .locals 1

    .line 124
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalCalories:I

    return v0
.end method

.method public getTotalClimb()F
    .locals 1

    .line 100
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalClimb:F

    return v0
.end method

.method public getTotalCo2()F
    .locals 1

    .line 148
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalCo2:F

    return v0
.end method

.method public getTotalDistance()F
    .locals 1

    .line 68
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalDistance:F

    return v0
.end method

.method public getTotalMilliseconds()I
    .locals 1

    .line 44
    iget v0, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalMilliseconds:I

    return v0
.end method

.method public setAdjustedTotalTrips(I)V
    .locals 0

    .line 176
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->adjustedTotalTrips:I

    return-void
.end method

.method public setAvgCalories(F)V
    .locals 0

    .line 136
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgCalories:F

    return-void
.end method

.method public setAvgClimb(F)V
    .locals 0

    .line 112
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgClimb:F

    return-void
.end method

.method public setAvgCo2(F)V
    .locals 0

    .line 160
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgCo2:F

    return-void
.end method

.method public setAvgDistance(F)V
    .locals 0

    .line 80
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgDistance:F

    return-void
.end method

.method public setAvgSpeed(F)V
    .locals 0

    .line 96
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgSpeed:F

    return-void
.end method

.method public setAvgTime(F)V
    .locals 0

    .line 56
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->avgTime:F

    return-void
.end method

.method public setHighestCalories(I)V
    .locals 0

    .line 144
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestCalories:I

    return-void
.end method

.method public setHighestClimb(F)V
    .locals 0

    .line 120
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestClimb:F

    return-void
.end method

.method public setHighestCo2(I)V
    .locals 0

    .line 168
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->highestCo2:I

    return-void
.end method

.method public setLongestDistance(F)V
    .locals 0

    .line 88
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->longestDistance:F

    return-void
.end method

.method public setLongestTrip(I)V
    .locals 0

    .line 64
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->longestTrip:I

    return-void
.end method

.method public setTotalCalories(I)V
    .locals 0

    .line 128
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalCalories:I

    return-void
.end method

.method public setTotalClimb(F)V
    .locals 0

    .line 104
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalClimb:F

    return-void
.end method

.method public setTotalCo2(F)V
    .locals 0

    .line 152
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalCo2:F

    return-void
.end method

.method public setTotalDistance(F)V
    .locals 0

    .line 72
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalDistance:F

    return-void
.end method

.method public setTotalMilliseconds(I)V
    .locals 0

    .line 48
    iput p1, p0, Lbike/smarthalo/app/models/LifetimeMetrics;->totalMilliseconds:I

    return-void
.end method
