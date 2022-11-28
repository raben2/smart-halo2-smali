.class public final Lcom/google/android/libraries/places/internal/ai;
.super Lcom/google/android/libraries/places/internal/r;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/r;"
    }
.end annotation


# instance fields
.field private final f:Landroid/location/Location;

.field private final g:Lcom/google/android/libraries/places/internal/ha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/internal/fu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/ha;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/fg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Landroid/location/Location;",
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/internal/fu;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/libraries/places/internal/fg;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/r;-><init>(Lcom/google/android/libraries/places/internal/ay;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/fg;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ai;->f:Landroid/location/Location;

    .line 3
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ai;->g:Lcom/google/android/libraries/places/internal/ha;

    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "findplacefromuserlocation/json"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/r;->a:Lcom/google/android/libraries/places/internal/ay;

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ai;->f:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ap;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ai;->g:Lcom/google/android/libraries/places/internal/ha;

    .line 12
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ap;->a(Lcom/google/android/libraries/places/internal/ha;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifiaccesspoints"

    .line 13
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ai;->f:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ap;->a(Landroid/location/Location;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "precision"

    .line 15
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "timestamp"

    .line 16
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ai;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/aq;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fields"

    .line 18
    invoke-static {v1, v2, v0, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
