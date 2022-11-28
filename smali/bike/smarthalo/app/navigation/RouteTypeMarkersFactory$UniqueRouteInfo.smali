.class Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;
.super Ljava/lang/Object;
.source "RouteTypeMarkersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniqueRouteInfo"
.end annotation


# instance fields
.field duplicates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            ">;"
        }
    .end annotation
.end field

.field fullPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation
.end field

.field polyline:Lbike/smarthalo/navigation/models/SHPolyline;

.field routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field stepPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbike/smarthalo/navigation/models/SHPolyline;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->fullPath:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->duplicates:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->stepPaths:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->polyline:Lbike/smarthalo/navigation/models/SHPolyline;

    .line 30
    iput-object p2, p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$UniqueRouteInfo;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-void
.end method
