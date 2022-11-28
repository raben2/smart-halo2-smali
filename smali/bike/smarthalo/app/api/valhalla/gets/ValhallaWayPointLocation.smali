.class public Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;
.super Ljava/lang/Object;
.source "ValhallaWayPointLocation.java"


# instance fields
.field public heading:Ljava/lang/Integer;

.field public headingTolerance:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "heading_tolerance"
    .end annotation
.end field

.field public lat:D

.field public lon:D

.field public minimumReachability:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minimum_reachability"
    .end annotation
.end field

.field public radius:I


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 13
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->headingTolerance:I

    const/16 v0, 0x32

    .line 15
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->minimumReachability:I

    .line 17
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->radius:I

    .line 20
    iput-wide p1, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->lat:D

    .line 21
    iput-wide p3, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->lon:D

    return-void
.end method

.method public constructor <init>(DDLjava/lang/Integer;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 13
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->headingTolerance:I

    const/16 v0, 0x32

    .line 15
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->minimumReachability:I

    .line 17
    iput v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->radius:I

    .line 25
    iput-wide p1, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->lat:D

    .line 26
    iput-wide p3, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->lon:D

    .line 27
    iput-object p5, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->heading:Ljava/lang/Integer;

    return-void
.end method
