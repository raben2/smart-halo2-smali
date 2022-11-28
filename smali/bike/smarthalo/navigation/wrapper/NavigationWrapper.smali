.class public Lbike/smarthalo/navigation/wrapper/NavigationWrapper;
.super Ljava/lang/Object;
.source "NavigationWrapper.java"


# static fields
.field public static final DESTINATION_MANEUVER_ADJUSTMENT:I = 0x32

.field private static final NULL_LATITUDE_LONGITUDE:I = 0x3e7

.field public static final STEP_MANEUVER_ADJUSTMENT:I = 0x19


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nav-lib"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native createGuidanceSystemAsTheCrowsFliesCpp(DDDDD)V
.end method

.method private native createGuidanceSystemOfflineTurnByTurnCpp(DDLjava/lang/String;)V
.end method

.method private native createGuidanceSystemTurnByTurnCpp(DDDDLjava/lang/String;)V
.end method

.method private native getBearing()I
.end method

.method private native getClosestPathLocationLatitude()D
.end method

.method private native getClosestPathLocationLongitude()D
.end method

.method private native getCurrentType()I
.end method

.method private native getDistanceToNextManeuver()I
.end method

.method private native getDistanceToThisManeuver()I
.end method

.method private native getIsStepAnimationNowCpp()Z
.end method

.method private native getManeuverEntranceLatitude(I)D
.end method

.method private native getManeuverEntranceLongitude(I)D
.end method

.method private native getNavigationModeCpp()I
.end method

.method private native getNextIndex()I
.end method

.method private native getNextMode()I
.end method

.method private native getNextNorthAngle()I
.end method

.method private native getNextTurnAngle()I
.end method

.method private native getNextTurnProgress()I
.end method

.method private native getNextTurnType()I
.end method

.method private native getNextTurnsPreviousTurnAngle()I
.end method

.method private native getOfflineModeStatusCpp()I
.end method

.method private native getOfflineOffPathDestinationAccuracy()I
.end method

.method private native getOfflineOffPathDestinationLatitude()D
.end method

.method private native getOfflineOffPathDestinationLongitude()D
.end method

.method private native getPolylineRoughIndices()[I
.end method

.method private native getPolylineShape()Ljava/lang/String;
.end method

.method private native getPolylineStepIndices()[I
.end method

.method private native getProgress()I
.end method

.method private native getRoundaboutAngles()[I
.end method

.method private native getSoundStatusCpp()I
.end method

.method private native getStepAnglesCpp(I)[I
.end method

.method private native getStepTransportationModeCpp(I)I
.end method

.method private native getThisMode()I
.end method

.method private native getThisNorthAngle()I
.end method

.method private native getThisTurnAngle()I
.end method

.method private native getThisTurnProgress()I
.end method

.method private native getThisTurnType()I
.end method

.method private native getThisTurnsPreviousTurnAngle()I
.end method

.method private native getTypesToRemove()[I
.end method

.method private native hasArrivedAtDestinationCpp(DD)Z
.end method

.method private native incrementCurrentStepCpp()Z
.end method

.method private isCoordinateNull(DD)Z
    .locals 3

    const-wide v0, 0x408f380000000000L    # 999.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private native processTurnByTurnOffThePathCpp(DD)V
.end method

.method private native setNavigationModeCpp(I)V
.end method

.method private native setSoundStatusCpp(I)V
.end method

.method private native updateStateCpp(DDI)V
.end method


# virtual methods
.method public native asTheCrowFliesBearing()I
.end method

.method public native clearTypesToRemove()V
.end method

.method public createGuidanceSystemAsTheCrowFlies(Landroid/location/Location;Landroid/location/Location;D)V
    .locals 11

    .line 29
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v0, p0

    move-wide v9, p3

    invoke-direct/range {v0 .. v10}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->createGuidanceSystemAsTheCrowsFliesCpp(DDDDD)V

    return-void
.end method

.method public createGuidanceSystemOfflineTurnByTurn(Landroid/location/Location;Ljava/lang/String;)V
    .locals 6

    .line 33
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->createGuidanceSystemOfflineTurnByTurnCpp(DDLjava/lang/String;)V

    return-void
.end method

.method public createGuidanceSystemTurnByTurn(Landroid/location/Location;Landroid/location/Location;Ljava/lang/String;)V
    .locals 10

    .line 24
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 25
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v0, p0

    move-object v9, p3

    .line 24
    invoke-direct/range {v0 .. v9}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->createGuidanceSystemTurnByTurnCpp(DDDDLjava/lang/String;)V

    return-void
.end method

.method public native dispose()V
.end method

.method public native getClosestStepIndexToUser()I
.end method

.method public native getCurrentBearing()I
.end method

.method public native getCurrentStepIndex()I
.end method

.method public native getDeviceInstruction()Ljava/lang/String;
.end method

.method public getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;
    .locals 16

    .line 65
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    invoke-direct {v0}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;-><init>()V

    .line 67
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getTypesToRemove()[I

    move-result-object v1

    .line 68
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getRoundaboutAngles()[I

    move-result-object v2

    .line 70
    invoke-static {}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->values()[Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    move-result-object v3

    .line 72
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget v7, v1, v6

    .line 73
    iget-object v8, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->typesToRemove:Ljava/util/ArrayList;

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 76
    :cond_0
    array-length v1, v2

    :goto_1
    if-ge v5, v1, :cond_1

    aget v4, v2, v5

    .line 77
    iget-object v6, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutAngles:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 80
    :cond_1
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentType()I

    move-result v1

    aget-object v1, v3, v1

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 82
    new-instance v1, Lbike/smarthalo/navigation/models/NavAngleTurns;

    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisTurnAngle()I

    move-result v3

    .line 83
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisTurnsPreviousTurnAngle()I

    move-result v4

    .line 84
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisNorthAngle()I

    move-result v5

    .line 85
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisTurnProgress()I

    move-result v6

    .line 86
    invoke-static {}, Lbike/smarthalo/navigation/models/TransportationMode;->values()[Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisMode()I

    move-result v7

    aget-object v7, v2, v7

    .line 87
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisTurnType()I

    move-result v2

    invoke-static {v2}, Lbike/smarthalo/navigation/models/StepType;->getStepType(I)Lbike/smarthalo/navigation/models/StepType;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lbike/smarthalo/navigation/models/NavAngleTurns;-><init>(IIIILbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;)V

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    .line 89
    new-instance v1, Lbike/smarthalo/navigation/models/NavAngleTurns;

    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextTurnAngle()I

    move-result v10

    .line 90
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextTurnsPreviousTurnAngle()I

    move-result v11

    .line 91
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextNorthAngle()I

    move-result v12

    .line 92
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextTurnProgress()I

    move-result v13

    .line 93
    invoke-static {}, Lbike/smarthalo/navigation/models/TransportationMode;->values()[Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextMode()I

    move-result v3

    aget-object v14, v2, v3

    .line 94
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextTurnType()I

    move-result v2

    invoke-static {v2}, Lbike/smarthalo/navigation/models/StepType;->getStepType(I)Lbike/smarthalo/navigation/models/StepType;

    move-result-object v15

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lbike/smarthalo/navigation/models/NavAngleTurns;-><init>(IIIILbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;)V

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->nextTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    .line 96
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getIsStepAnimationNowCpp()Z

    move-result v1

    iput-boolean v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->isStepAnimationNow:Z

    .line 98
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getProgress()I

    move-result v1

    iput v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    .line 100
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDistanceToThisManeuver()I

    move-result v1

    iput v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    .line 102
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDistanceToNextManeuver()I

    move-result v1

    iput v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToNextManeuver:I

    .line 104
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getBearing()I

    move-result v1

    iput v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    .line 106
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->incrementCurrentStepCpp()Z

    move-result v1

    iput-boolean v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->incrementCurrentStep:Z

    .line 108
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDeviceInstruction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->deviceInstruction:Ljava/lang/String;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getInstruction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getThisStreetName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisStreetName:Ljava/lang/String;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getRoundaboutExitStreetName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutExitStreetName:Ljava/lang/String;

    .line 116
    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNextIndex()I

    move-result v1

    iput v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->nextIndex:I

    .line 118
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->closestPathLocation:Landroid/location/Location;

    .line 119
    iget-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->closestPathLocation:Landroid/location/Location;

    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getClosestPathLocationLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 120
    iget-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->closestPathLocation:Landroid/location/Location;

    invoke-direct/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getClosestPathLocationLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->hasReachedOfflineModeOrigin()Z

    move-result v1

    iput-boolean v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->hasReachedOfflineModeOrigin:Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineModeStatus()Lbike/smarthalo/navigation/models/OfflineModeStatus;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->clearTypesToRemove()V

    return-object v0
.end method

.method public getDistanceToNextManeuver(Landroid/location/Location;)F
    .locals 2

    .line 156
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getManeuverEntranceLocation(I)Landroid/location/Location;

    move-result-object v1

    .line 158
    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    .line 159
    invoke-virtual {p0, v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTypeInt(I)I

    move-result v0

    invoke-static {v0, p1}, Lbike/smarthalo/navigation/helpers/StepHelper;->adjustDistanceToManeuvre(IF)F

    move-result p1

    return p1
.end method

.method public native getFirstStepAngle(I)I
.end method

.method public native getInstruction()Ljava/lang/String;
.end method

.method public getManeuverEntranceLocation(I)Landroid/location/Location;
    .locals 5

    .line 188
    invoke-direct {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getManeuverEntranceLatitude(I)D

    move-result-wide v0

    .line 189
    invoke-direct {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getManeuverEntranceLongitude(I)D

    move-result-wide v2

    .line 191
    new-instance p1, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {p1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 193
    invoke-virtual {p1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    return-object p1
.end method

.method public getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;
    .locals 2

    .line 41
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationModeCpp()I

    move-result v0

    .line 43
    invoke-static {}, Lbike/smarthalo/navigation/models/NavigationMode;->values()[Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 44
    invoke-static {}, Lbike/smarthalo/navigation/models/NavigationMode;->values()[Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->NoNavigation:Lbike/smarthalo/navigation/models/NavigationMode;

    return-object v0
.end method

.method public native getNavigationRouteStepsSize()I
.end method

.method public getOfflineModeStatus()Lbike/smarthalo/navigation/models/OfflineModeStatus;
    .locals 3

    .line 137
    invoke-static {}, Lbike/smarthalo/navigation/models/OfflineModeStatus;->values()[Lbike/smarthalo/navigation/models/OfflineModeStatus;

    move-result-object v0

    .line 138
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineModeStatusCpp()I

    move-result v1

    if-ltz v1, :cond_1

    .line 140
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    :goto_1
    return-object v0
.end method

.method public getOfflineOffPathDestination()Landroid/location/Location;
    .locals 7

    .line 167
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineOffPathDestinationLatitude()D

    move-result-wide v0

    .line 168
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineOffPathDestinationLongitude()D

    move-result-wide v2

    .line 169
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineOffPathDestinationAccuracy()I

    move-result v4

    .line 173
    invoke-direct {p0, v0, v1, v2, v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isCoordinateNull(DD)Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    new-instance v5, Landroid/location/Location;

    const-string v6, ""

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 176
    invoke-virtual {v5, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    int-to-float v0, v4

    .line 177
    invoke-virtual {v5, v0}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5
.end method

.method public getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;
    .locals 6

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolylineShape()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolylineRoughIndices()[I

    move-result-object v1

    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolylineStepIndices()[I

    move-result-object v2

    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolylineDistance()F

    move-result v3

    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolylineDuration()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/navigation/models/SHPolyline;->buildPolyline(Ljava/lang/String;[I[IFJ)Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object v0

    return-object v0
.end method

.method public native getPolylineDistance()F
.end method

.method public native getPolylineDuration()J
.end method

.method public native getRoundaboutExitStreetName()Ljava/lang/String;
.end method

.method public getSoundStatus()Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;
    .locals 2

    .line 132
    invoke-direct {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getSoundStatusCpp()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 133
    invoke-static {}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->values()[Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    :goto_0
    return-object v0
.end method

.method public getStepAngles(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepAnglesCpp(I)[I

    move-result-object p1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public native getStepInstruction(I)Ljava/lang/String;
.end method

.method public getStepTransportationMode(I)Lbike/smarthalo/navigation/models/TransportationMode;
    .locals 1

    .line 184
    invoke-static {}, Lbike/smarthalo/navigation/models/TransportationMode;->values()[Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTransportationModeCpp(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public native getStepTypeInt(I)I
.end method

.method public native getThisStreetName()Ljava/lang/String;
.end method

.method public native getTurningOnPathAngle()I
.end method

.method public hasArrivedAtDestination(Landroid/location/Location;)Z
    .locals 4

    .line 199
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->hasArrivedAtDestinationCpp(DD)Z

    move-result p1

    return p1
.end method

.method public native hasReachedOfflineModeOrigin()Z
.end method

.method public native isComplete()Z
.end method

.method public native isNavigating()Z
.end method

.method public native isOffThePath()Z
.end method

.method public native isTurnStarted()Z
.end method

.method public native previewPolyline(Ljava/lang/String;)V
.end method

.method public processTurnByTurnOffThePath(Landroid/location/Location;)V
    .locals 4

    .line 61
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->processTurnByTurnOffThePathCpp(DD)V

    return-void
.end method

.method public native resetNavigationState()V
.end method

.method public native setComplete(Z)V
.end method

.method public native setCurrentStep(I)V
.end method

.method public native setNavigating(Z)V
.end method

.method public setNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Lbike/smarthalo/navigation/models/NavigationMode;->getValue()I

    move-result p1

    .line 53
    invoke-direct {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigationModeCpp(I)V

    return-void
.end method

.method public native setNewSteps(Ljava/lang/String;)V
.end method

.method public native setOffThePath(Z)V
.end method

.method public setSoundStatus(Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;)V
    .locals 0

    .line 163
    invoke-virtual {p1}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setSoundStatusCpp(I)V

    return-void
.end method

.method public updateState(Landroid/location/Location;)V
    .locals 6

    .line 57
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->updateStateCpp(DDI)V

    return-void
.end method
