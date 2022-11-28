.class final Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public likelihood:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public placeResult:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLikelihood()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->likelihood:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPlaceResult()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->placeResult:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;

    return-object v0
.end method
