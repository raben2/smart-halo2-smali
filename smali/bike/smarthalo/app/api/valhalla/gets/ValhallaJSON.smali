.class public Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;
.super Ljava/lang/Object;
.source "ValhallaJSON.java"


# instance fields
.field public costing:Ljava/lang/String;

.field public costingOptions:Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "costing_options"
    .end annotation
.end field

.field public directionsOptions:Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "directions_options"
    .end annotation
.end field

.field public locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->locations:Ljava/util/ArrayList;

    const-string v0, "bicycle"

    .line 13
    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->costing:Ljava/lang/String;

    .line 14
    new-instance v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;

    invoke-direct {v0}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->costingOptions:Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;

    .line 16
    new-instance v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    invoke-direct {v0}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->directionsOptions:Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    return-void
.end method
