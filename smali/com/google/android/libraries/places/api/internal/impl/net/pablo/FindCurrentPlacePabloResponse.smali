.class public final Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;
.super Lcom/google/android/libraries/places/internal/aj;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/aj<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public htmlAttributions:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public placeLikelihoodResults:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "predictions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ft;->a(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->placeLikelihoodResults:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getPlaceResult()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getLikelihood()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getPlaceResult()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->htmlAttributions:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getLikelihood()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->newInstance(Lcom/google/android/libraries/places/api/model/Place;D)Lcom/google/android/libraries/places/api/model/PlaceLikelihood;

    move-result-object v2

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Unexpected server error: PlaceLikelihood returned without a likelihood value"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Unexpected server error: PlaceLikelihood returned without a Place value"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    .line 19
    :cond_2
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object v0

    return-object v0

    .line 4
    :cond_3
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->status:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->errorMessage:Ljava/lang/String;

    .line 5
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/ft;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method

.method public final bridge synthetic convert()Lcom/google/android/libraries/places/internal/az;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->convert()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object v0

    return-object v0
.end method
