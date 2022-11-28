.class public Lbike/smarthalo/app/helpers/SHPolylineHelper;
.super Ljava/lang/Object;
.source "SHPolylineHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SHPolylineHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseEncodedPolyline(Ljava/lang/String;I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 29
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x2

    .line 33
    new-array v1, p1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 38
    new-array v6, p1, [I

    fill-array-data v6, :array_1

    move v7, v5

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x1

    if-gt v5, v8, :cond_2

    const/16 v9, 0x20

    move v10, v7

    const/16 v7, 0x20

    const/4 v11, 0x0

    :goto_2
    if-lt v7, v9, :cond_0

    .line 44
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x3f

    int-to-byte v7, v7

    add-int/lit8 v10, v10, 0x1

    .line 46
    aget v12, v6, v5

    and-int/lit8 v13, v7, 0x1f

    shl-int/2addr v13, v11

    or-int/2addr v12, v13

    aput v12, v6, v5

    add-int/lit8 v11, v11, 0x5

    goto :goto_2

    .line 50
    :cond_0
    aget v7, v6, v5

    and-int/2addr v7, v8

    if-lez v7, :cond_1

    .line 51
    aget v7, v1, v5

    aget v9, v6, v5

    shr-int/lit8 v8, v9, 0x1

    not-int v8, v8

    add-int/2addr v7, v8

    aput v7, v6, v5

    goto :goto_3

    .line 53
    :cond_1
    aget v7, v1, v5

    aget v9, v6, v5

    shr-int/lit8 v8, v9, 0x1

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 55
    :goto_3
    aget v7, v6, v5

    aput v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v7, v10

    goto :goto_1

    .line 58
    :cond_2
    new-instance v5, Lbike/smarthalo/app/models/SHLatLng;

    aget v9, v6, v2

    int-to-double v9, v9

    mul-double v9, v9, v3

    aget v6, v6, v8

    int-to-double v11, v6

    mul-double v11, v11, v3

    invoke-direct {v5, v9, v10, v11, v12}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    :cond_3
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static populatePolylineLatLngs(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            "Ljava/util/List<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    .line 21
    iget-object v0, p0, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    iget-object v1, p0, Lbike/smarthalo/navigation/models/SHPolyline;->shape:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHPolylineHelper;->parseEncodedPolyline(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
