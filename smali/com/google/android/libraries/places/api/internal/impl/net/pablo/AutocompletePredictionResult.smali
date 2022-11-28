.class Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;,
        Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;
    }
.end annotation


# instance fields
.field public fullText:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public fullTextMatchedSubstrings:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "matched_substrings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;",
            ">;"
        }
    .end annotation
.end field

.field public placeId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public structuredFormatting:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public types:Ljava/util/List;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getFullText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->fullText:Ljava/lang/String;

    return-object v0
.end method

.method getFullTextMatchedSubstrings()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->fullTextMatchedSubstrings:Ljava/util/List;

    return-object v0
.end method

.method getPlaceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method getStructuredFormatting()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->structuredFormatting:Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;

    return-object v0
.end method

.method getTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->types:Ljava/util/List;

    return-object v0
.end method
