.class public Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;
.super Ljava/lang/Object;
.source "RouteMarkerLocation.java"


# instance fields
.field public duplicateRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            ">;"
        }
    .end annotation
.end field

.field public markerLatLng:Lbike/smarthalo/app/models/SHLatLng;

.field public routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->duplicateRoutes:Ljava/util/List;

    return-void
.end method
