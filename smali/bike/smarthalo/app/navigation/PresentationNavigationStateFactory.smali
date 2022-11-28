.class public Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;
.super Ljava/lang/Object;
.source "PresentationNavigationStateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCurrentNavState(Ljava/util/ArrayList;Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;I)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            "Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;",
            "Lbike/smarthalo/navigation/models/NavigationMode;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Landroid/location/Location;",
            "I)",
            "Lbike/smarthalo/app/models/PresentationNavigationState;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 218
    new-instance v6, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {v6}, Lbike/smarthalo/app/models/PresentationNavigationState;-><init>()V

    const/4 v7, 0x0

    .line 219
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbike/smarthalo/navigation/models/SHPolyline;

    .line 220
    iget-object v8, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    new-instance v9, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v10

    iget v11, v7, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    aget-object v10, v10, v11

    iget v11, v7, Lbike/smarthalo/navigation/models/SHPolyline;->distance:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-wide v12, v7, Lbike/smarthalo/navigation/models/SHPolyline;->duration:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v9, v10, v11, v7}, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Float;Ljava/lang/Long;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p5

    .line 221
    iput-object v7, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Lbike/smarthalo/app/models/SHLocation;->buildSHLocation(Landroid/location/Location;Ljava/lang/Long;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v7

    iput-object v7, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->origin:Lbike/smarthalo/app/models/SHLocation;

    .line 223
    iput-object v4, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 224
    iput-object v3, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 226
    iput-object v5, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 228
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 229
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbike/smarthalo/navigation/models/SHPolyline;

    .line 230
    iget-object v10, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    new-instance v11, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v12

    iget v13, v9, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    aget-object v12, v12, v13

    iget v13, v9, Lbike/smarthalo/navigation/models/SHPolyline;->distance:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-wide v14, v9, Lbike/smarthalo/navigation/models/SHPolyline;->duration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v11, v12, v13, v9}, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Float;Ljava/lang/Long;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-static/range {p0 .. p0}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->getInitialDirections(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 234
    iget-object v8, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 235
    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    iput-object v1, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    goto :goto_1

    .line 237
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    .line 240
    :goto_1
    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v3, v1, :cond_2

    move/from16 v1, p7

    .line 241
    invoke-static {v6, v0, v5, v1}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->initializeOfflineTurnByTurn(Lbike/smarthalo/app/models/PresentationNavigationState;Ljava/util/ArrayList;Landroid/location/Location;I)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/high16 v1, 0x42c80000    # 100.0f

    .line 243
    iput v1, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->distanceToManeuvre:F

    .line 246
    :goto_2
    sget-object v1, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Initial:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    if-ne v2, v1, :cond_3

    .line 247
    invoke-static/range {p0 .. p0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getAcceptableRouteMarkerLocations(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->presentationMarkerLocations:Ljava/util/List;

    .line 248
    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Initial:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v0, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    goto :goto_3

    .line 250
    :cond_3
    iput-boolean v7, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    .line 251
    sget-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Reroute:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    if-ne v2, v0, :cond_4

    .line 252
    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Recalculating:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v0, v6, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    goto :goto_3

    .line 253
    :cond_4
    sget-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->DirectNavigation:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    if-ne v2, v0, :cond_5

    const/4 v0, 0x0

    .line 254
    invoke-static {v6, v4, v7, v5, v0}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->prepareNavigationStateOnStart(Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;ZLandroid/location/Location;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)Lbike/smarthalo/app/models/PresentationNavigationState;

    :cond_5
    :goto_3
    return-object v6
.end method

.method private static getInitialDirections(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPresentationDirection;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/navigation/models/SHPolyline;

    .line 318
    invoke-static {v1, v0}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->injectPresentationDirection(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static initialize(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;I)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;",
            "Lbike/smarthalo/navigation/models/NavigationMode;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            "Landroid/location/Location;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "I)",
            "Lbike/smarthalo/app/models/PresentationNavigationState;"
        }
    .end annotation

    .line 49
    sget-object v2, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Initial:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->buildCurrentNavState(Ljava/util/ArrayList;Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;I)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p0

    return-object p0
.end method

.method private static initializeOfflineTurnByTurn(Lbike/smarthalo/app/models/PresentationNavigationState;Ljava/util/ArrayList;Landroid/location/Location;I)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;",
            "Landroid/location/Location;",
            "I)",
            "Lbike/smarthalo/app/models/PresentationNavigationState;"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/navigation/models/SHPolyline;

    iget-object v1, v1, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 268
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/navigation/models/SHPolyline;

    iget-object v1, v1, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/navigation/models/SHPolyline;

    iget-object v2, v2, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/navigation/models/SHPolyline;

    iget-object v1, v1, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/navigation/models/SHPolyline;

    iget-object p1, p1, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p3

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    .line 271
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    .line 272
    sget-object p3, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    .line 275
    :cond_0
    invoke-virtual {p2, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    iput p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->distanceToManeuvre:F

    :cond_1
    return-object p0
.end method

.method public static initializeOnDirectNavigation(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;",
            "Lbike/smarthalo/navigation/models/NavigationMode;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            "Landroid/location/Location;",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")",
            "Lbike/smarthalo/app/models/PresentationNavigationState;"
        }
    .end annotation

    .line 58
    sget-object v2, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->DirectNavigation:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->buildCurrentNavState(Ljava/util/ArrayList;Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;I)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p0

    return-object p0
.end method

.method private static injectPresentationDirection(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHPresentationDirection;",
            ">;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p0, p1}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->populatePresentationDirectionsListContainingRoughPath(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Lbike/smarthalo/app/models/SHPresentationDirection;

    iget v1, p0, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    sget-object v2, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    const/4 v3, 0x0

    iget-object v4, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/models/SHPresentationDirection;-><init>(ILbike/smarthalo/navigation/models/TransportationMode;II)V

    .line 309
    iget-object p0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHPresentationDirection;->setDirectionLocation(Ljava/util/List;)V

    .line 310
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static populatePresentationDirectionsListContainingRoughPath(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHPresentationDirection;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .line 329
    iget-object v1, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    .line 330
    :goto_0
    sget-object v3, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 337
    :goto_1
    iget-object v3, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_5

    if-nez v5, :cond_3

    .line 340
    iget-object v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 341
    new-instance v5, Lbike/smarthalo/app/models/SHPresentationDirection;

    iget v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    sget-object v8, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    iget-object v9, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v5, v7, v8, v6, v9}, Lbike/smarthalo/app/models/SHPresentationDirection;-><init>(ILbike/smarthalo/navigation/models/TransportationMode;II)V

    .line 342
    iget-object v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-interface {v0, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbike/smarthalo/app/models/SHPresentationDirection;->setDirectionLocation(Ljava/util/List;)V

    .line 343
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v5, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_2

    .line 348
    iget-object v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 349
    new-instance v5, Lbike/smarthalo/app/models/SHPresentationDirection;

    iget v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    sget-object v8, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    iget-object v9, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v5, v7, v8, v6, v9}, Lbike/smarthalo/app/models/SHPresentationDirection;-><init>(ILbike/smarthalo/navigation/models/TransportationMode;II)V

    .line 350
    iget-object v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-interface {v0, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbike/smarthalo/app/models/SHPresentationDirection;->setDirectionLocation(Ljava/util/List;)V

    .line 351
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v5, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    .line 358
    iget-object v5, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    iget-object v5, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v6, v5, :cond_4

    .line 359
    new-instance v5, Lbike/smarthalo/app/models/SHPresentationDirection;

    iget v7, p0, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    sget-object v8, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    iget-object v9, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-direct {v5, v7, v8, v6, v9}, Lbike/smarthalo/app/models/SHPresentationDirection;-><init>(ILbike/smarthalo/navigation/models/TransportationMode;II)V

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v0, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lbike/smarthalo/app/models/SHPresentationDirection;->setDirectionLocation(Ljava/util/List;)V

    .line 361
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public static prepareNavigationStateOnStart(Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;ZLandroid/location/Location;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 6

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHPresentationDirection;

    .line 183
    iget-object v4, v3, Lbike/smarthalo/app/models/SHPresentationDirection;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-eq v4, p1, :cond_1

    iget-object v4, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v5, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v4, v5, :cond_0

    .line 184
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_2
    iput-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    .line 188
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    .line 189
    iget-object v3, v2, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-eq v3, p1, :cond_4

    iget-object v3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v4, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v3, v4, :cond_3

    .line 190
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    const/4 v1, 0x0

    new-instance v3, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    iget-object v4, v2, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v5, v2, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->distance:Ljava/lang/Float;

    iget-object v2, v2, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->duration:Ljava/lang/Long;

    invoke-direct {v3, v4, v5, v2}, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Float;Ljava/lang/Long;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    :cond_5
    if-eqz p2, :cond_6

    .line 195
    sget-object p1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->DirectNavigation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    goto :goto_1

    :cond_6
    sget-object p1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewStep:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    :goto_1
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 199
    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    if-eqz p4, :cond_7

    .line 203
    iget-object p1, p4, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->stepDescription:Ljava/lang/String;

    :cond_7
    return-object p0
.end method

.method public static recalculateState(Ljava/util/ArrayList;Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            "Lbike/smarthalo/navigation/models/NavigationMode;",
            "Landroid/location/Location;",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")",
            "Lbike/smarthalo/app/models/PresentationNavigationState;"
        }
    .end annotation

    .line 68
    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Recalculating:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 70
    sget-object v3, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Reroute:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->buildCurrentNavState(Ljava/util/ArrayList;Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;I)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p0

    return-object p0
.end method

.method public static updateOnNewLocation(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Z)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-object p4, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-static {p2, p4}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->updatePastLocations(Landroid/location/Location;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    iput-object p4, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    .line 89
    iput-object p3, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->displayStatus:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    .line 91
    iget-object p4, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne p4, v0, :cond_0

    iget-object p4, p3, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    .line 92
    invoke-static {p0, p4}, Lbike/smarthalo/app/helpers/DirectionHelper;->convertStepInstruction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p3, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    :goto_0
    iput-object p0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->stepDescription:Ljava/lang/String;

    .line 94
    iput-object p2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    .line 96
    iget p0, p3, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    int-to-float p0, p0

    iput p0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->distanceToManeuvre:F

    .line 98
    iget-object p0, p3, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->closestPathLocation:Landroid/location/Location;

    iput-object p0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->closestPathLocation:Landroid/location/Location;

    .line 99
    iget p0, p3, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->nextIndex:I

    iput p0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->nextIndex:I

    .line 101
    sget-object p0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewLocation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object p0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    return-object p1
.end method

.method public static updateOnNewStep(Lbike/smarthalo/app/models/PresentationNavigationState;FLjava/lang/String;Lbike/smarthalo/navigation/models/TransportationMode;IILandroid/location/Location;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 0

    .line 160
    iput-object p2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->stepDescription:Ljava/lang/String;

    .line 161
    iput p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->distanceToManeuvre:F

    .line 162
    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentMode:Lbike/smarthalo/navigation/models/TransportationMode;

    .line 163
    iput p4, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->stepType:I

    .line 164
    sget-object p1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewStep:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 165
    iput-object p6, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    return-object p0
.end method

.method public static updateOnOfflineResults(Landroid/content/Context;Lbike/smarthalo/navigation/models/OfflineModeStatus;ILandroid/location/Location;ZLbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/navigation/models/TransportationMode;IIF)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p1

    move-object v1, p3

    move-object v2, p5

    .line 119
    iget-object v3, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-eq v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 123
    sget-object v3, Lbike/smarthalo/navigation/models/OfflineModeStatus;->TurningOnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-ne v0, v3, :cond_1

    .line 124
    sget-object v3, Lbike/smarthalo/navigation/models/StepType;->STANDARD:Lbike/smarthalo/navigation/models/StepType;

    invoke-virtual {v3}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v3

    iput v3, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->stepType:I

    move-object/from16 v4, p7

    .line 125
    iput-object v4, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->stepDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p7

    .line 126
    sget-object v3, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-ne v0, v3, :cond_2

    move-object v2, p5

    move/from16 v3, p11

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object v8, p6

    .line 127
    invoke-static/range {v2 .. v8}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->updateOnNewStep(Lbike/smarthalo/app/models/PresentationNavigationState;FLjava/lang/String;Lbike/smarthalo/navigation/models/TransportationMode;IILandroid/location/Location;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v2

    .line 139
    :cond_2
    :goto_1
    sget-object v3, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Recalculating:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v3, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 142
    :cond_3
    iput-object v1, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    .line 143
    iget-object v3, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineOffPathDestination:Landroid/location/Location;

    if-eqz v3, :cond_4

    move-object v3, p6

    .line 144
    invoke-virtual {p6, p3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    iput v1, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->distanceToManeuvre:F

    move v1, p4

    goto :goto_2

    :cond_4
    move v1, p4

    .line 146
    :goto_2
    iput-boolean v1, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->hasReachedOfflineModeOrigin:Z

    .line 147
    iput-object v0, v2, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    return-object v2
.end method

.method private static updatePastLocations(Landroid/location/Location;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    .line 284
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x3

    .line 289
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLatLng;

    add-int/lit8 v2, v0, -0x2

    .line 290
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLatLng;

    .line 292
    invoke-static {v1, v3}, Lbike/smarthalo/app/helpers/DirectionHelper;->isDistanceSmall(Lbike/smarthalo/app/models/SHLatLng;Lbike/smarthalo/app/models/SHLatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    float-to-double v1, p0

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpl-double p0, v1, v3

    if-lez p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 297
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method
