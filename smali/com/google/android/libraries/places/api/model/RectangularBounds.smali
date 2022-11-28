.class public abstract Lcom/google/android/libraries/places/api/model/RectangularBounds;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/api/model/LocationBias;
.implements Lcom/google/android/libraries/places/api/model/LocationRestriction;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/RectangularBounds$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/RectangularBounds;
    .locals 1
    .param p0    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->newInstance(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/RectangularBounds;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/RectangularBounds;
    .locals 2
    .param p0    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/bw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/bw;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/RectangularBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/RectangularBounds$a;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds$a;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/RectangularBounds$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds$a;->a()Lcom/google/android/libraries/places/api/model/RectangularBounds;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getNortheast()Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSouthwest()Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
