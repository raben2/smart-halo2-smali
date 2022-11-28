.class public final Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;
.super Lcom/google/android/libraries/places/internal/aj;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/aj<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public predictionResults:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "predictions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;",
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

.method private static toPrediction(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .locals 3
    .param p0    # Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/ao;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/ao;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setPlaceTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->getFullText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setFullText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->getFullTextMatchedSubstrings()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->toSubstringMatches(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->a(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;->getStructuredFormatting()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;->getPrimaryText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setPrimaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;->getPrimaryTextMatchedSubstrings()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->toSubstringMatches(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->b(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;->getSecondaryText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setSecondaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$StructuredFormatting;->getSecondaryTextMatchedSubstrings()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->toSubstringMatches(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->c(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->build()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "Unexpected server error: Place ID not provided for an autocomplete prediction result"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0
.end method

.method private static toSubstringMatch(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;
    .locals 3
    .param p0    # Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;->getOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;->getLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/google/android/libraries/places/internal/bg;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/bg;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a$a;->a(I)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a$a;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;->getLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a$a;->b(I)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a$a;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a$a;->a()Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "Unexpected server error: Place ID not provided for an autocomplete prediction result"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0
.end method

.method private static toSubstringMatches(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;

    .line 36
    invoke-static {v1}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->toSubstringMatch(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult$Substring;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final convert()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ft;->a(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->predictionResults:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;

    .line 9
    invoke-static {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->toPrediction(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/AutocompletePredictionResult;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->status:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->errorMessage:Ljava/lang/String;

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

    .line 49
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;->convert()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object v0

    return-object v0
.end method
