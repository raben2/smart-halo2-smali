.class public abstract Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PlaceLikelihood;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/dp;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ha;->a(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/dp;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPlaceLikelihoods()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PlaceLikelihood;",
            ">;"
        }
    .end annotation
.end method
