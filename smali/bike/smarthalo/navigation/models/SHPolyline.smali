.class public Lbike/smarthalo/navigation/models/SHPolyline;
.super Ljava/lang/Object;
.source "SHPolyline.java"


# instance fields
.field public distance:F

.field public duration:J

.field public latLngs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public roughIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public routeType:I

.field public shape:Ljava/lang/String;

.field public stepIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPolyline(Ljava/lang/String;[I[IFJ)Lbike/smarthalo/navigation/models/SHPolyline;
    .locals 8

    .line 18
    new-instance v0, Lbike/smarthalo/navigation/models/SHPolyline;

    invoke-direct {v0}, Lbike/smarthalo/navigation/models/SHPolyline;-><init>()V

    .line 20
    iput-object p0, v0, Lbike/smarthalo/navigation/models/SHPolyline;->shape:Ljava/lang/String;

    .line 21
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    .line 22
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 24
    array-length v3, p1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    .line 25
    iget-object v3, v0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    new-array v4, v4, [Ljava/lang/Integer;

    aget v7, p1, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, p0

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v1, p1, 0x1

    .line 28
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 29
    iget-object v2, v0, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    new-array v6, v4, [Ljava/lang/Integer;

    aget v7, p2, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p0

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 32
    :cond_1
    iput p3, v0, Lbike/smarthalo/navigation/models/SHPolyline;->distance:F

    .line 33
    iput-wide p4, v0, Lbike/smarthalo/navigation/models/SHPolyline;->duration:J

    return-object v0
.end method


# virtual methods
.method public containsRoughPath()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->roughIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartEndIndexEqual(I)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lbike/smarthalo/navigation/models/SHPolyline;->stepIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
