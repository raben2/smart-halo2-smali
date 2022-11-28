.class public Lbike/smarthalo/app/helpers/DirectionHelper;
.super Ljava/lang/Object;
.source "DirectionHelper.java"


# static fields
.field public static final ARRIVAL_DISTANCE:F = 20.0f

.field private static final BEARING_OPPOSITION_TOLERANCE:I = 0xa0

.field public static final BEARING_PROXIMITY_TOLERANCE:I = 0x28

.field public static final DESTINATION_ARRIVAL_DISTANCE:F = 50.0f

.field public static final MIN_DISTANCE_TO_REMOVE:D = 5.0

.field private static final TAG:Ljava/lang/String; = "DirectionHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForOrientationReroute(ZLjava/lang/Integer;Ljava/util/ArrayList;Landroid/location/Location;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;",
            "Landroid/location/Location;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    .line 81
    new-instance p0, Lbike/smarthalo/app/models/ClosestPathLocation;

    invoke-direct {p0, p3, p2}, Lbike/smarthalo/app/models/ClosestPathLocation;-><init>(Landroid/location/Location;Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    .line 91
    iget v1, p0, Lbike/smarthalo/app/models/ClosestPathLocation;->nextPathIndex:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 93
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p0

    add-int/2addr v1, v2

    .line 94
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p3

    goto/16 :goto_0

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v3, v1, :cond_2

    add-int/lit8 p0, v1, -0x1

    .line 96
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p0

    .line 97
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p3

    goto :goto_0

    .line 100
    :cond_2
    iget-object p0, p0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    .line 101
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v3

    add-int/lit8 v4, v1, 0x1

    .line 102
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v5}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v5

    add-int/lit8 v6, v1, -0x1

    .line 103
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v7}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p0

    float-to-int v3, v3

    float-to-int p0, p0

    .line 104
    invoke-static {v3, p0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getSmallerAngleGap(II)I

    move-result p0

    const/16 v7, 0xa0

    if-le p0, v7, :cond_3

    .line 105
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p0

    .line 106
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p3

    goto :goto_0

    :cond_3
    float-to-int p0, v5

    .line 108
    invoke-static {v3, p0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getSmallerAngleGap(II)I

    move-result p0

    if-le p0, v7, :cond_4

    .line 109
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p0

    .line 110
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p3

    .line 113
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    float-to-int p1, p3

    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getSmallerAngleGap(II)I

    move-result p0

    const/16 p1, 0x28

    if-le p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public static convertStepInstruction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "nav.inject.direct.instruction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "nav.inject.departure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "nav.inject.arrival"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "nav.inject.follow.heading.route"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "nav.inject.follow.heading.route.starts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "nav.found.left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "nav.found.right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "nav.inject.follow.heading.route.device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "nav.inject.follow.heading.route.starts.device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "nav.inject.direct.arrival"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "nav.inject.continue.instruction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const v0, 0x7f1102a5

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f1102a9

    .line 237
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1102aa

    .line 235
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f110293

    .line 233
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f110294

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f1102a8

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f1102a6

    .line 223
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f1102ad

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f1102ac

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p1, 0x7f1102a7

    .line 217
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x657b7047 -> :sswitch_a
        -0x259099a -> :sswitch_9
        0x6531377 -> :sswitch_8
        0x23ee31f2 -> :sswitch_7
        0x2786e065 -> :sswitch_6
        0x3b12149e -> :sswitch_5
        0x3e50dbed -> :sswitch_4
        0x591741d2 -> :sswitch_3
        0x59df20c7 -> :sswitch_2
        0x5d554a42 -> :sswitch_1
        0x7a0a007b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createOfflineTurnByTurnPresentationState(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Lbike/smarthalo/navigation/wrapper/NavigationWrapper;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 12

    .line 247
    invoke-virtual {p3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineModeStatus()Lbike/smarthalo/navigation/models/OfflineModeStatus;

    move-result-object v1

    .line 248
    invoke-virtual {p3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getTurningOnPathAngle()I

    move-result v2

    .line 249
    invoke-virtual {p3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getOfflineOffPathDestination()Landroid/location/Location;

    move-result-object v3

    .line 250
    invoke-virtual {p3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->hasReachedOfflineModeOrigin()Z

    move-result v4

    .line 251
    invoke-virtual {p3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationRouteStepsSize()I

    move-result v0

    .line 253
    invoke-static {p0, p3, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getCurrentStepInstruction(Landroid/content/Context;Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-static {p3, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getCurrentTransportationMode(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object v8

    .line 255
    invoke-static {p3, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getCurrentStepTypeInt(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)I

    move-result v9

    .line 256
    invoke-static {p3, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getCurrentFirstStepAngle(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)I

    move-result v10

    .line 270
    invoke-virtual {p3, p2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDistanceToNextManeuver(Landroid/location/Location;)F

    move-result v11

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    .line 258
    invoke-static/range {v0 .. v11}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->updateOnOfflineResults(Landroid/content/Context;Lbike/smarthalo/navigation/models/OfflineModeStatus;ILandroid/location/Location;ZLbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/navigation/models/TransportationMode;IIF)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p0

    return-object p0
.end method

.method public static getAsTheCrowFliesProgress(Landroid/location/Location;Landroid/location/Location;F)I
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 143
    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getDirectionProgress(Landroid/location/Location;Landroid/location/Location;FF)I

    move-result p0

    return p0
.end method

.method public static getClockwiseAngleGap(II)I
    .locals 0

    if-le p1, p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, -0xb4

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getCurrentFirstStepAngle(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)I
    .locals 0

    .line 293
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->isSecondLastStep(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getFirstStepAngle(I)I

    move-result p0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getFirstStepAngle(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getCurrentStepInstruction(Landroid/content/Context;Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Ljava/lang/String;
    .locals 0

    .line 275
    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/DirectionHelper;->isSecondLastStep(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepInstruction(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepInstruction(I)Ljava/lang/String;

    move-result-object p1

    .line 275
    :goto_0
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->convertStepInstruction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentStepTypeInt(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)I
    .locals 0

    .line 287
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->isSecondLastStep(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTypeInt(I)I

    move-result p0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTypeInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getCurrentTransportationMode(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Lbike/smarthalo/navigation/models/TransportationMode;
    .locals 0

    .line 281
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->isSecondLastStep(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTransportationMode(I)Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object p0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTransportationMode(I)Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDirectionProgress(Landroid/location/Location;Landroid/location/Location;FF)I
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    sub-float p0, p2, p0

    add-float/2addr p0, p3

    div-float/2addr p0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p0, p0, p1

    const/4 p2, 0x0

    .line 149
    invoke-static {p2, p0}, Ljava/lang/StrictMath;->max(FF)F

    move-result p0

    .line 150
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;
    .locals 5

    .line 189
    new-instance v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    invoke-direct {v0}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;-><init>()V

    .line 190
    sget-object v1, Lbike/smarthalo/app/helpers/DirectionHelper$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    invoke-virtual {p0}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f000000    # 0.5f

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 204
    :pswitch_0
    iput v1, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useRoads:F

    .line 205
    iput v2, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useHills:F

    .line 206
    iput v4, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useFerry:F

    .line 207
    iput v3, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->avoidBadSurfaces:F

    return-object v0

    .line 198
    :pswitch_1
    iput v1, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useRoads:F

    .line 199
    iput v4, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useHills:F

    .line 200
    iput v4, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useFerry:F

    .line 201
    iput v3, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->avoidBadSurfaces:F

    return-object v0

    .line 192
    :pswitch_2
    iput v2, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useRoads:F

    .line 193
    iput v4, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useHills:F

    .line 194
    iput v4, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->useFerry:F

    .line 195
    iput v3, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;->avoidBadSurfaces:F

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNavColour(Lbike/smarthalo/navigation/models/TransportationMode;)Lbike/smarthalo/sdk/models/SHColour;
    .locals 3

    .line 167
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v0}, Lbike/smarthalo/sdk/models/SHColour;-><init>()V

    .line 168
    sget-object v1, Lbike/smarthalo/app/helpers/DirectionHelper$1;->$SwitchMap$bike$smarthalo$navigation$models$TransportationMode:[I

    invoke-virtual {p0}, Lbike/smarthalo/navigation/models/TransportationMode;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/16 v1, 0x43

    const/16 v2, 0xff

    packed-switch p0, :pswitch_data_0

    .line 180
    iput v1, v0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    .line 181
    iput v2, v0, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 182
    iput v2, v0, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x26

    .line 175
    iput p0, v0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    const/16 p0, 0xea

    .line 176
    iput p0, v0, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    const/16 p0, 0xf9

    .line 177
    iput p0, v0, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    goto :goto_0

    .line 170
    :pswitch_1
    iput v1, v0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    .line 171
    iput v2, v0, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 172
    iput v2, v0, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNavColourFromProgress(III)Lbike/smarthalo/sdk/models/SHColour;
    .locals 1

    sub-int/2addr p2, p1

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    int-to-float p2, p2

    mul-float p0, p0, p2

    float-to-int p0, p0

    add-int/2addr p1, p0

    .line 162
    new-instance p0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 p2, 0xff

    invoke-direct {p0, p1, p2, p2}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    return-object p0
.end method

.method public static getNavColourFromProgressForSmartHalo(I)Lbike/smarthalo/sdk/models/SHColour;
    .locals 2

    const/16 v0, 0x11

    const/16 v1, 0x43

    .line 156
    invoke-static {p0, v0, v1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgress(III)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalizedAngleGap(II)I
    .locals 0

    sub-int/2addr p0, p1

    :goto_0
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p1, 0x168

    if-le p0, p1, :cond_1

    add-int/lit16 p0, p0, -0x168

    goto :goto_1

    :cond_1
    return p0
.end method

.method public static getSmallerAngleGap(II)I
    .locals 1

    .line 49
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNormalizedAngleGap(II)I

    move-result v0

    .line 51
    invoke-static {p1, p0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNormalizedAngleGap(II)I

    move-result p0

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static isDistanceSmall(Lbike/smarthalo/app/models/SHLatLng;Lbike/smarthalo/app/models/SHLatLng;)Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p0

    .line 72
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecondLastStep(Lbike/smarthalo/navigation/wrapper/NavigationWrapper;I)Z
    .locals 0

    .line 299
    invoke-virtual {p0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result p0

    add-int/lit8 p1, p1, -0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static validateRoundaboutComplete(Ljava/lang/Boolean;Landroid/location/Location;IZLandroid/location/Location;)Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p1, p4}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p0

    float-to-int p0, p0

    if-gez p0, :cond_1

    add-int/lit16 p0, p0, 0x168

    .line 139
    :cond_1
    invoke-static {p0, p2}, Lbike/smarthalo/app/helpers/DirectionHelper;->getSmallerAngleGap(II)I

    move-result p0

    const/16 p1, 0x28

    if-ge p0, p1, :cond_2

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static validateTurnCompleteStateFromBearing(ZZLjava/lang/Integer;Ljava/lang/Integer;Landroid/location/Location;Landroid/location/Location;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0xb4

    if-le p1, v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, -0x168

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getSmallerAngleGap(II)I

    move-result p0

    const/16 p1, 0x28

    if-ge p0, p1, :cond_2

    .line 128
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p4, p5}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p0, p2}, Lbike/smarthalo/app/helpers/DirectionHelper;->getSmallerAngleGap(II)I

    move-result p0

    if-ge p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
