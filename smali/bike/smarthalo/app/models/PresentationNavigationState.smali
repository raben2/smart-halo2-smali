.class public Lbike/smarthalo/app/models/PresentationNavigationState;
.super Ljava/lang/Object;
.source "PresentationNavigationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;
    }
.end annotation


# instance fields
.field public closestPathLocation:Landroid/location/Location;

.field public currentBearing:Ljava/lang/Integer;

.field public currentLocation:Landroid/location/Location;

.field public currentMode:Lbike/smarthalo/navigation/models/TransportationMode;

.field public currentProgress:Ljava/lang/Integer;

.field public destination:Lbike/smarthalo/app/models/SHLocation;

.field public directions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPresentationDirection;",
            ">;"
        }
    .end annotation
.end field

.field public displayStatus:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

.field public distanceToManeuvre:F

.field public hasReachedOfflineModeOrigin:Z

.field public isActive:Z

.field public navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

.field public nextIndex:I

.field public offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

.field public offlineOffPathDestination:Landroid/location/Location;

.field public origin:Lbike/smarthalo/app/models/SHLocation;

.field public pastLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation
.end field

.field public presentationMarkerLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;",
            ">;"
        }
    .end annotation
.end field

.field public routeInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field public stepDescription:Ljava/lang/String;

.field public stepType:I

.field public updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    .line 37
    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->None:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    return-void
.end method


# virtual methods
.method public getAllDirectionSHLatLngs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHPresentationDirection;

    .line 74
    iget-object v2, v2, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAsTheCrowFliesDistance()F
    .locals 2

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->origin:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    return v0
.end method

.method public getProgressToDestination()I
    .locals 3

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 111
    iget-object v1, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    iget-object v2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    add-float/2addr v1, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 113
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getTotalDistance()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :goto_0
    iget-object v2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    add-int/lit8 v4, v1, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    add-float/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public hasCompassPath()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lbike/smarthalo/app/models/PresentationNavigationState;->isOfflineOffPath()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasTurnByTurnPath()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOfflineOffPath()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->TurningOnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreOfflineNavigation()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->hasReachedOfflineModeOrigin:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
