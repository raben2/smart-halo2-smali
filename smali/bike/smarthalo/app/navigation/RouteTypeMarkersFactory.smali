.class public Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;
.super Ljava/lang/Object;
.source "RouteTypeMarkersFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;,
        Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;
    }
.end annotation


# static fields
.field private static MAXIMUM_ACCEPTABLE_METERS_FROM_OTHER_PATH:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForPathOverlap(Ljava/lang/Float;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->MAXIMUM_ACCEPTABLE_METERS_FROM_OTHER_PATH:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkForStepConflicts(Ljava/util/ArrayList;Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;Ljava/util/List;)Lbike/smarthalo/app/models/SHLatLng;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;",
            "Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;",
            ">;)",
            "Lbike/smarthalo/app/models/SHLatLng;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    .line 139
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getCenterOfPath(Ljava/util/ArrayList;)Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLatLng;

    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;

    .line 144
    iget-object v7, v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v8, p1, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne v7, v8, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    iget-object v6, v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    .line 149
    invoke-static {v6, p0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->searchForConflicts(Ljava/util/ArrayList;Lbike/smarthalo/app/models/SHLatLng;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v5, :cond_6

    .line 150
    invoke-static {v6, v0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->searchForConflicts(Ljava/util/ArrayList;Lbike/smarthalo/app/models/SHLatLng;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    :cond_7
    if-nez v4, :cond_8

    return-object p0

    :cond_8
    if-nez v5, :cond_9

    return-object v0

    :cond_9
    return-object v1
.end method

.method private static findClosestPosition(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    sget-object p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Lower:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ge v0, p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p1, p0, :cond_2

    .line 232
    sget-object p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Upper:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-object p0

    .line 235
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ge p0, p1, :cond_2

    .line 236
    sget-object p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Lower:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-object p0

    .line 240
    :cond_2
    sget-object p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Middle:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-object p0
.end method

.method public static getAcceptableRouteMarkerLocations(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/navigation/models/SHPolyline;

    .line 38
    new-instance v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v5

    iget v6, v1, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    aget-object v5, v5, v6

    invoke-direct {v4, v1, v5}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;-><init>(Lbike/smarthalo/navigation/models/SHPolyline;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 39
    iget-object v5, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    iget-object v6, v1, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    .line 41
    :goto_1
    iget-object v6, v1, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v1, v5}, Lbike/smarthalo/navigation/models/SHPolyline;->isStartEndIndexEqual(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    iget-object v6, v1, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 43
    iget-object v7, v1, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 44
    iget-object v8, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->removeDuplicateRoutes(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;

    .line 54
    new-instance v5, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;

    invoke-direct {v5}, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;-><init>()V

    .line 55
    iget-object v6, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iput-object v6, v5, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 56
    iget-object v6, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->duplicates:Ljava/util/ArrayList;

    iput-object v6, v5, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->duplicateRoutes:Ljava/util/List;

    .line 58
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 59
    :goto_3
    iget-object v7, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 60
    div-int/lit8 v8, v7, 0x2

    const/4 v9, 0x0

    move-object v10, v9

    move v9, v8

    :goto_4
    if-eqz v6, :cond_3

    if-lez v9, :cond_6

    goto :goto_5

    :cond_3
    if-ge v9, v7, :cond_6

    .line 64
    :goto_5
    iget-object v10, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-static {v10, v4, p0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForStepConflicts(Ljava/util/ArrayList;Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;Ljava/util/List;)Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v10

    if-eqz v10, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v6, :cond_5

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    if-nez v10, :cond_b

    if-eqz v6, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, -0x1

    :goto_7
    add-int/2addr v8, v9

    :goto_8
    if-eqz v6, :cond_8

    if-ge v8, v7, :cond_b

    goto :goto_9

    :cond_8
    if-lez v8, :cond_b

    .line 73
    :goto_9
    iget-object v9, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {v9, v4, p0}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForStepConflicts(Ljava/util/ArrayList;Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;Ljava/util/List;)Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v10

    if-eqz v10, :cond_9

    goto :goto_a

    :cond_9
    if-eqz v6, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    :cond_b
    :goto_a
    if-eqz v10, :cond_c

    .line 81
    iput-object v10, v5, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->markerLatLng:Lbike/smarthalo/app/models/SHLatLng;

    goto :goto_b

    .line 83
    :cond_c
    iget-object v6, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 84
    iget-object v4, v4, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/models/SHLatLng;

    iput-object v4, v5, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->markerLatLng:Lbike/smarthalo/app/models/SHLatLng;

    .line 86
    :goto_b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    return-object v0
.end method

.method private static getCenterOfPath(Ljava/util/ArrayList;)Lbike/smarthalo/app/models/SHLatLng;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)",
            "Lbike/smarthalo/app/models/SHLatLng;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLatLng;

    .line 263
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLatLng;

    .line 265
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 266
    iget-wide v3, v0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    iget-wide v5, v1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 267
    iget-wide v3, v0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    iget-wide v0, v1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    add-double/2addr v3, v0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 268
    new-instance v0, Lbike/smarthalo/app/models/ClosestPathLocation;

    invoke-direct {v0, v2, p0}, Lbike/smarthalo/app/models/ClosestPathLocation;-><init>(Landroid/location/Location;Ljava/util/ArrayList;)V

    .line 270
    new-instance p0, Lbike/smarthalo/app/models/SHLatLng;

    iget-object v0, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/models/SHLatLng;-><init>(Landroid/location/Location;)V

    return-object p0
.end method

.method private static getPathOverlapDistance(Lbike/smarthalo/app/models/SHLatLng;Ljava/util/ArrayList;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHLatLng;",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 255
    new-instance v0, Lbike/smarthalo/app/models/ClosestPathLocation;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lbike/smarthalo/app/models/ClosestPathLocation;-><init>(Landroid/location/Location;Ljava/util/ArrayList;)V

    .line 256
    iget-object p1, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static removeDuplicateRoutes(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;

    .line 97
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-le v4, v2, :cond_7

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;

    .line 100
    iget-object v7, v3, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 102
    iget-object v7, v3, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    .line 103
    iget-object v8, v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    const/4 v10, 0x0

    .line 110
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 111
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 112
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 113
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbike/smarthalo/app/models/SHLatLng;

    .line 114
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbike/smarthalo/app/models/SHLatLng;

    .line 116
    iget-wide v13, v11, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    move v15, v2

    iget-wide v1, v12, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    cmpl-double v16, v13, v1

    if-nez v16, :cond_2

    iget-wide v1, v11, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    iget-wide v11, v12, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    cmpl-double v13, v1, v11

    if-eqz v13, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move v2, v15

    goto :goto_3

    :cond_2
    :goto_4
    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    move v15, v2

    goto :goto_5

    :cond_4
    move v15, v2

    :goto_5
    if-eqz v9, :cond_6

    .line 124
    iget-object v1, v3, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->duplicates:Ljava/util/ArrayList;

    iget-object v2, v6, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    move v15, v2

    :cond_6
    :goto_6
    add-int/lit8 v4, v4, -0x1

    move v2, v15

    goto :goto_1

    :cond_7
    move v15, v2

    add-int/lit8 v2, v15, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private static searchForConflicts(Ljava/util/ArrayList;Lbike/smarthalo/app/models/SHLatLng;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;>;",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ")Z"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 167
    div-int/lit8 v1, v0, 0x2

    .line 169
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 170
    invoke-static {p1, v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getPathOverlapDistance(Lbike/smarthalo/app/models/SHLatLng;Ljava/util/ArrayList;)Ljava/lang/Float;

    move-result-object v2

    .line 171
    invoke-static {v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForPathOverlap(Ljava/lang/Float;)Z

    move-result v3

    const/4 v4, 0x1

    move-object v5, v2

    move v2, v1

    const/4 v1, 0x1

    :goto_0
    if-nez v3, :cond_5

    add-int/2addr v1, v4

    add-int/lit8 v6, v0, -0x1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v1

    .line 174
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    if-nez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    sub-int v3, v2, v7

    .line 180
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 181
    invoke-static {p1, v6}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getPathOverlapDistance(Lbike/smarthalo/app/models/SHLatLng;Ljava/util/ArrayList;)Ljava/lang/Float;

    move-result-object v6

    .line 182
    invoke-static {v6}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForPathOverlap(Ljava/lang/Float;)Z

    move-result v8

    add-int v9, v2, v7

    .line 184
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 185
    invoke-static {p1, v10}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getPathOverlapDistance(Lbike/smarthalo/app/models/SHLatLng;Ljava/util/ArrayList;)Ljava/lang/Float;

    move-result-object v10

    if-nez v8, :cond_1

    .line 187
    invoke-static {v10}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForPathOverlap(Ljava/lang/Float;)Z

    move-result v8

    :cond_1
    if-nez v8, :cond_4

    .line 190
    invoke-static {v6, v5, v10}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->findClosestPosition(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    move-result-object v11

    .line 191
    sget-object v12, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$1;->$SwitchMap$bike$smarthalo$app$navigation$RouteTypeMarkersFactory$ClosestPosition:[I

    invoke-virtual {v11}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne v7, v4, :cond_2

    add-int/lit8 v3, v0, -0x3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 204
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 205
    invoke-static {p1, v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getPathOverlapDistance(Lbike/smarthalo/app/models/SHLatLng;Ljava/util/ArrayList;)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForPathOverlap(Ljava/lang/Float;)Z

    move-result v8

    :cond_2
    move v3, v8

    move v2, v9

    move-object v5, v10

    goto :goto_0

    :pswitch_1
    if-ne v7, v4, :cond_3

    if-le v2, v4, :cond_3

    add-int/lit8 v2, v2, -0x2

    .line 195
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 196
    invoke-static {p1, v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->getPathOverlapDistance(Lbike/smarthalo/app/models/SHLatLng;Ljava/util/ArrayList;)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;->checkForPathOverlap(Ljava/lang/Float;)Z

    move-result v8

    :cond_3
    move v2, v3

    move-object v5, v6

    move v3, v8

    goto :goto_0

    :cond_4
    :goto_1
    move v3, v8

    goto :goto_0

    :cond_5
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
