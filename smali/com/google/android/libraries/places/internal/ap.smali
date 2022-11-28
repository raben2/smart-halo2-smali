.class public final Lcom/google/android/libraries/places/internal/ap;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcom/google/android/libraries/places/internal/hd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/hd<",
            "Lcom/google/android/libraries/places/internal/i;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/google/android/libraries/places/internal/he;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/he;-><init>()V

    .line 48
    sget-object v1, Lcom/google/android/libraries/places/internal/i;->a:Lcom/google/android/libraries/places/internal/i;

    const-string v2, "NONE"

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/i;->b:Lcom/google/android/libraries/places/internal/i;

    const-string v2, "WPA_PSK"

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/i;->c:Lcom/google/android/libraries/places/internal/i;

    const-string v2, "WPA_EAP"

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/i;->d:Lcom/google/android/libraries/places/internal/i;

    const-string v2, "SECURED_NONE"

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/he;->a()Lcom/google/android/libraries/places/internal/hd;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/ap;->a:Lcom/google/android/libraries/places/internal/hd;

    return-void
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/Integer;
    .locals 2
    .param p0    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v1, v1, p0

    .line 20
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/google/android/libraries/places/api/model/LocationBias;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    instance-of v0, p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v0, :cond_1

    .line 33
    check-cast p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ap;->a(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown LocationBias type."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    instance-of v0, p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v0, :cond_1

    .line 38
    check-cast p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ap;->a(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown LocationRestriction type."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static a(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Ljava/lang/String;
    .locals 10

    .line 40
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getSouthwest()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 41
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 42
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 43
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getNortheast()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    .line 44
    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 45
    iget-wide v7, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 46
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "rectangle:%.15f,%.15f|%.15f,%.15f"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v9, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v9, v2

    invoke-static {p0, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/ha;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/internal/fu;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    check-cast p0, Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v1

    const/4 v2, 0x0

    check-cast v2, Lcom/google/android/libraries/places/internal/hu;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/ha;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/libraries/places/internal/fu;

    .line 4
    new-instance v4, Lcom/google/android/libraries/places/internal/he;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/he;-><init>()V

    const-string v5, "mac"

    .line 6
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/fu;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v4

    const-string v5, "strength_dbm"

    .line 7
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/fu;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v4

    const-string v5, "wifi_auth_type"

    sget-object v6, Lcom/google/android/libraries/places/internal/ap;->a:Lcom/google/android/libraries/places/internal/hd;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/fu;->e()Lcom/google/android/libraries/places/internal/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/libraries/places/internal/hd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v4

    const-string v5, "is_connected"

    .line 9
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/fu;->f()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v4

    const-string v5, "frequency_mhz"

    .line 10
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/fu;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/he;->a()Lcom/google/android/libraries/places/internal/hd;

    move-result-object v3

    const-string v4, ","

    .line 12
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hj;->b(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/hj;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/jt;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/jt;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "|"

    .line 15
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hj;->b(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/hj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hj;->a()Lcom/google/android/libraries/places/internal/hj;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "country:"

    .line 29
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Landroid/location/Location;)Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 25
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.15f,%.15f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {p0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
