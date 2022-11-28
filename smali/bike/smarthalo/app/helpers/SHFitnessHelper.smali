.class public Lbike/smarthalo/app/helpers/SHFitnessHelper;
.super Ljava/lang/Object;
.source "SHFitnessHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAverageSpeed(DJ)D
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    long-to-double p2, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    div-double/2addr p0, p2

    const-wide p2, 0x400ccccccccccccdL    # 3.6

    mul-double p0, p0, p2

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public static getCO2Spared(D)D
    .locals 2

    const-wide v0, 0x406f400000000000L    # 250.0

    mul-double p0, p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getCalories(DDZIII)D
    .locals 4

    if-eqz p4, :cond_0

    const-wide v0, 0x402b800000000000L    # 13.75

    int-to-double p4, p5

    mul-double p4, p4, v0

    mul-int/lit8 p6, p6, 0x5

    int-to-double v0, p6

    add-double/2addr p4, v0

    const-wide v0, 0x401b0a3d70a3d70aL    # 6.76

    int-to-double p6, p7

    mul-double p6, p6, v0

    sub-double/2addr p4, p6

    const-wide p6, 0x4050800000000000L    # 66.0

    add-double/2addr p4, p6

    goto :goto_0

    :cond_0
    const-wide v0, 0x40231eb851eb851fL    # 9.56

    int-to-double p4, p5

    mul-double p4, p4, v0

    const-wide v0, 0x3ffd99999999999aL    # 1.85

    int-to-double v2, p6

    mul-double v2, v2, v0

    add-double/2addr p4, v2

    const-wide v0, 0x4012b851eb851eb8L    # 4.68

    int-to-double p6, p7

    mul-double p6, p6, v0

    sub-double/2addr p4, p6

    const-wide p6, 0x4084780000000000L    # 655.0

    add-double/2addr p4, p6

    :goto_0
    const-wide p6, 0x40034fe47991bc56L    # 2.41401

    cmpg-double v0, p0, p6

    if-gez v0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_1
    const-wide p6, 0x4021b3e6c4c5974eL    # 8.85137

    cmpg-double v0, p0, p6

    if-gez v0, :cond_2

    const-wide/high16 p0, 0x400c000000000000L    # 3.5

    goto :goto_1

    :cond_2
    const-wide p6, 0x402e416e7a311e86L    # 15.127796

    cmpg-double v0, p0, p6

    if-gez v0, :cond_3

    const-wide p0, 0x4017333333333333L    # 5.8

    goto :goto_1

    :cond_3
    const-wide p6, 0x403326b18116ebd5L    # 19.151146

    cmpg-double v0, p0, p6

    if-gez v0, :cond_4

    const-wide p0, 0x401b333333333333L    # 6.8

    goto :goto_1

    :cond_4
    const-wide p6, 0x40365eaceaaf35e3L    # 22.369826

    cmpg-double v0, p0, p6

    if-gez v0, :cond_5

    const-wide/high16 p0, 0x4020000000000000L    # 8.0

    goto :goto_1

    :cond_5
    const-wide p6, 0x403996a854477ff1L    # 25.588506

    cmpg-double v0, p0, p6

    if-gez v0, :cond_6

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    goto :goto_1

    :cond_6
    const-wide p6, 0x403e93d46b26bf87L    # 30.57746

    cmpg-double v0, p0, p6

    if-gez v0, :cond_7

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    goto :goto_1

    :cond_7
    const-wide p0, 0x402f99999999999aL    # 15.8

    :goto_1
    const-wide/high16 p6, 0x4038000000000000L    # 24.0

    div-double/2addr p4, p6

    mul-double p4, p4, p0

    mul-double p4, p4, p2

    return-wide p4
.end method

.method public static getDisplayProgress(Lbike/smarthalo/app/models/SHGoal;)I
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v1, 0x3e8

    :cond_1
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 40
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$previousProgress()D

    move-result-wide v4

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v0, v1

    mul-double v6, v6, v0

    div-double/2addr v4, v6

    mul-double v4, v4, v2

    double-to-int p0, v4

    const/16 v0, 0x64

    .line 41
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getEndOfRideSequence(Lbike/smarthalo/app/models/SHRide;IF)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "IF)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 193
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v3

    cmpl-float v3, v3, p2

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-lt v2, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 205
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p1, v0

    if-ltz v0, :cond_3

    .line 208
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 209
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lio/realm/RealmList;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method public static getFirstValidRide(Ljava/util/List;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)",
            "Lbike/smarthalo/app/models/SHPastRide;"
        }
    .end annotation

    .line 317
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHPastRide;

    .line 318
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasDeleteRequest()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v1

    sget v2, Llayout/FitnessMainViewFragment;->MINIMUM_RIDE_DISTANCE:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstantaneousSpeed(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double p0, p0, v0

    div-double v0, p0, p2

    :cond_0
    return-wide v0
.end method

.method public static getInstantaneousTime(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;)J
    .locals 2

    .line 45
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static getMaxSpeed(Ljava/util/List;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)F"
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLocation;

    .line 125
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 126
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getNewCaloriesValues(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;DZIII)D
    .locals 10

    .line 57
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getTimeInHours(J)D

    move-result-wide v4

    move-wide v2, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 58
    invoke-static/range {v2 .. v9}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getCalories(DDZIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getPrettyUnitString(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
    .locals 5

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int p2, p2

    .line 312
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-double/2addr p2, v0

    .line 313
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getRideCalories(Ljava/util/List;ZIII)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;ZIII)D"
        }
    .end annotation

    move-object v0, p0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-wide/16 v3, 0x0

    :goto_0
    if-le v1, v2, :cond_1

    .line 155
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lbike/smarthalo/app/models/SHLocation;

    add-int/lit8 v5, v1, -0x1

    .line 156
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lbike/smarthalo/app/models/SHLocation;

    .line 160
    invoke-virtual {v6}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v5

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {v6}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v5

    float-to-double v8, v5

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    mul-double v8, v8, v10

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {v6}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v7}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    .line 164
    invoke-static {v6, v7}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getInstantaneousTime(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;)J

    move-result-wide v8

    long-to-double v8, v8

    float-to-double v10, v5

    .line 165
    invoke-static {v10, v11, v8, v9}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getInstantaneousSpeed(DD)D

    move-result-wide v8

    :goto_1
    move v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 168
    invoke-static/range {v6 .. v13}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getNewCaloriesValues(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;DZIII)D

    move-result-wide v5

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static getRideTime(JJ)J
    .locals 0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public static getTimeInHours(J)D
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getTotalDistance(Ljava/util/List;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)F"
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    .line 112
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    .line 113
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getWaitedAverage(FFI)F
    .locals 2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p2, v0

    div-float/2addr v0, v1

    mul-float p0, p0, v0

    div-float/2addr p2, v1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static isCurrentSpeedMaxSpeed(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHLocation;DD)Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$maxSpeed()D

    move-result-wide v0

    cmpl-double p0, p4, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$accuracy()F

    move-result p0

    const/high16 p1, 0x41a00000    # 20.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const-wide/16 p0, 0x0

    cmpl-double p4, p2, p0

    if-eqz p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static processEndOfRide(Lbike/smarthalo/app/models/SHRide;IFZIII)Lbike/smarthalo/app/models/fitness/TrimmedRideData;
    .locals 9

    .line 240
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getEndOfRideSequence(Lbike/smarthalo/app/models/SHRide;IF)Ljava/util/List;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 243
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lio/realm/RealmList;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 244
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHRide;->realmSet$goodLocations(Lio/realm/RealmList;)V

    .line 245
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getTotalDistance(Ljava/util/List;)F

    move-result v2

    .line 248
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v0

    float-to-double v3, v2

    sub-double/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$traveledDistance(D)V

    .line 250
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$endTime(J)V

    .line 251
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getRideTime(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 252
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getRideTime(JJ)J

    move-result-wide v5

    .line 254
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getAverageSpeed(DJ)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$avgSpeed(D)V

    .line 256
    invoke-static {p1, p3, p4, p5, p6}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getRideCalories(Ljava/util/List;ZIII)D

    move-result-wide p3

    .line 257
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide p5

    sub-double/2addr p5, p3

    const-wide/16 v0, 0x0

    cmpl-double p1, p5, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p5, v0

    .line 258
    :goto_0
    invoke-virtual {p0, p5, p6}, Lbike/smarthalo/app/models/SHRide;->realmSet$burntCalories(D)V

    .line 262
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide p5

    invoke-static {p5, p6}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getCO2Spared(D)D

    move-result-wide p5

    invoke-virtual {p0, p5, p6}, Lbike/smarthalo/app/models/SHRide;->realmSet$co2(D)V

    .line 263
    invoke-static {v3, v4}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getCO2Spared(D)D

    move-result-wide v7

    .line 265
    invoke-static {p2}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getMaxSpeed(Ljava/util/List;)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/models/SHRide;->realmSet$maxSpeed(D)V

    .line 267
    new-instance p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;

    move-object v1, p0

    move-wide v3, v5

    move-wide v5, p3

    invoke-direct/range {v1 .. v8}, Lbike/smarthalo/app/models/fitness/TrimmedRideData;-><init>(FJDD)V

    return-object p0

    .line 270
    :cond_1
    new-instance p0, Lbike/smarthalo/app/models/fitness/TrimmedRideData;

    invoke-direct {p0}, Lbike/smarthalo/app/models/fitness/TrimmedRideData;-><init>()V

    return-object p0
.end method

.method public static processRideMetrics(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;ZIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 222
    invoke-virtual/range {p1 .. p1}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v0, v0

    .line 223
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-virtual {v6, v2, v3}, Lbike/smarthalo/app/models/SHRide;->realmSet$traveledDistance(D)V

    .line 225
    invoke-static/range {p1 .. p2}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getInstantaneousTime(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;)J

    move-result-wide v2

    long-to-double v7, v2

    .line 226
    invoke-virtual/range {p1 .. p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, v7, v8}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getInstantaneousSpeed(DD)D

    move-result-wide v0

    :goto_0
    move-wide v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    .line 228
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->isCurrentSpeedMaxSpeed(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHLocation;DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v6, v11, v12}, Lbike/smarthalo/app/models/SHRide;->realmSet$maxSpeed(D)V

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v2, v7, v0

    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {v6, v11, v12}, Lbike/smarthalo/app/models/SHRide;->realmSet$curSpeed(D)V

    .line 234
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getRideTime(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getAverageSpeed(DJ)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$avgSpeed(D)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-static/range {v9 .. v16}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getNewCaloriesValues(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;DZIII)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$burntCalories(D)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getCO2Spared(D)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$co2(D)V

    return-void
.end method

.method public static trimGoal(Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/fitness/TrimmedRideData;)V
    .locals 4

    .line 274
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v0

    iget-wide v2, p1, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedTime:J

    long-to-float p1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v0

    iget-wide v2, p1, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCalories:D

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 279
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v0

    iget-wide v2, p1, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedCO2:D

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 281
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v0

    iget p1, p1, Lbike/smarthalo/app/models/fitness/TrimmedRideData;->trimmedDistance:F

    float-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static updateGoalMetric(Lbike/smarthalo/app/models/SHGoal;D)V
    .locals 4

    .line 304
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$previousProgress()D

    move-result-wide v0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 307
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    return-void
.end method

.method public static updateGoalProgress(Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/SHRide;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 286
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->updateGoalMetric(Lbike/smarthalo/app/models/SHGoal;D)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$curSpeed()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->updateGoalMetric(Lbike/smarthalo/app/models/SHGoal;D)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 296
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->updateGoalMetric(Lbike/smarthalo/app/models/SHGoal;D)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 298
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->updateGoalMetric(Lbike/smarthalo/app/models/SHGoal;D)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static updateGoalWithTrimmedValues(Lbike/smarthalo/app/models/SHGoal;FJDD)V
    .locals 0

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    :cond_0
    return-void
.end method
