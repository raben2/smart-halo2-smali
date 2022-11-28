.class public Lbike/smarthalo/app/models/ClosestPathLocation;
.super Ljava/lang/Object;
.source "ClosestPathLocation.java"


# instance fields
.field public location:Landroid/location/Location;

.field public nextPathIndex:I

.field public path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->path:Ljava/util/ArrayList;

    .line 20
    iget-object v3, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->path:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    .line 21
    iput-object v1, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    .line 22
    iput v4, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->nextPathIndex:I

    goto/16 :goto_2

    :cond_0
    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v3

    iput-object v3, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    .line 27
    iget-object v3, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    invoke-virtual {v1, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v5, v3

    .line 28
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_4

    .line 29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLatLng;

    add-int/lit8 v7, v4, 0x1

    .line 30
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbike/smarthalo/app/models/SHLatLng;

    .line 32
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 33
    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v10

    .line 35
    invoke-static {v1, v3, v8}, Lbike/smarthalo/app/models/ClosestPathLocation;->locationFromAPoint(Landroid/location/Location;Lbike/smarthalo/app/models/SHLatLng;Lbike/smarthalo/app/models/SHLatLng;)Landroid/location/Location;

    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v8

    float-to-double v11, v8

    .line 37
    invoke-virtual {v1, v9}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v8

    float-to-double v13, v8

    .line 38
    invoke-virtual {v1, v10}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v8

    float-to-double v1, v8

    .line 40
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 41
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 42
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    cmpl-double v8, v5, v11

    if-nez v8, :cond_1

    .line 45
    iput-object v3, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    .line 46
    iput v7, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->nextPathIndex:I

    goto :goto_1

    :cond_1
    cmpl-double v3, v5, v13

    if-nez v3, :cond_2

    .line 48
    iput v4, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->nextPathIndex:I

    .line 49
    iput-object v9, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    goto :goto_1

    :cond_2
    cmpl-double v3, v5, v1

    if-nez v3, :cond_3

    .line 51
    iput v7, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->nextPathIndex:I

    .line 52
    iput-object v10, v0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    :cond_3
    :goto_1
    move v4, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static locationFromAPoint(Landroid/location/Location;Lbike/smarthalo/app/models/SHLatLng;Lbike/smarthalo/app/models/SHLatLng;)Landroid/location/Location;
    .locals 12

    .line 76
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    sub-double/2addr v0, v2

    .line 77
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-wide v4, p1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    sub-double/2addr v2, v4

    .line 78
    iget-wide v4, p2, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    iget-wide v6, p1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    sub-double/2addr v4, v6

    .line 79
    iget-wide v6, p2, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    iget-wide v8, p1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    sub-double/2addr v6, v8

    mul-double v0, v0, v4

    mul-double v2, v2, v6

    add-double/2addr v0, v2

    mul-double v2, v4, v4

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_2

    .line 87
    iget-wide v2, p1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    iget-wide v8, p2, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    cmpl-double p0, v2, v8

    if-nez p0, :cond_0

    iget-wide v2, p1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    iget-wide v8, p2, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    cmpl-double p0, v2, v8

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    .line 91
    iget-wide p0, p2, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    .line 92
    iget-wide v0, p2, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    goto :goto_1

    .line 94
    :cond_1
    iget-wide v2, p1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    .line 95
    iget-wide p0, p1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    mul-double v0, v0, v6

    add-double/2addr v0, p0

    move-wide p0, v2

    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    iget-wide v0, p1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    .line 89
    iget-wide p0, p1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    move-wide v10, p0

    move-wide p0, v0

    move-wide v0, v10

    .line 98
    :goto_1
    new-instance p2, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {p2, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2, p0, p1}, Landroid/location/Location;->setLongitude(D)V

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    return-object p2
.end method


# virtual methods
.method public distanceRemainingOnPath()D
    .locals 7

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/models/ClosestPathLocation;->location:Landroid/location/Location;

    .line 63
    iget v1, p0, Lbike/smarthalo/app/models/ClosestPathLocation;->nextPathIndex:I

    const-wide/16 v2, 0x0

    :goto_0
    iget-object v4, p0, Lbike/smarthalo/app/models/ClosestPathLocation;->path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 64
    iget-object v4, p0, Lbike/smarthalo/app/models/ClosestPathLocation;->path:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v5, v0

    add-double/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method
