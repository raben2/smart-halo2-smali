.class public Lbike/smarthalo/app/models/SHPath;
.super Ljava/lang/Object;
.source "SHPath.java"


# instance fields
.field public afterAngle:I

.field public beforeAngle:I

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
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/models/SHPath;->path:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPathAngle()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget v0, p0, Lbike/smarthalo/app/models/SHPath;->afterAngle:I

    iget v1, p0, Lbike/smarthalo/app/models/SHPath;->beforeAngle:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    const/high16 v1, -0x3ccc0000    # -180.0f

    const/high16 v2, 0x43b40000    # 360.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v2

    goto :goto_1

    .line 29
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    float-to-int v0, v0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getPathDistance()D
    .locals 6

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/models/SHPath;->path:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lbike/smarthalo/app/models/SHPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/models/SHLatLng;

    .line 44
    invoke-virtual {v4}, Lbike/smarthalo/app/models/SHLatLng;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getPathManeuverLocation()Lbike/smarthalo/app/models/SHLatLng;
    .locals 2

    .line 36
    iget-object v0, p0, Lbike/smarthalo/app/models/SHPath;->path:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLatLng;

    return-object v0
.end method
