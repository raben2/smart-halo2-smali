.class abstract Lcom/google/android/libraries/places/internal/bf;
.super Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;
.source "PG"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/bf;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/internal/bf;->b:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/bf;->a:I

    return v0
.end method

.method final b()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/libraries/places/internal/bf;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 11
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;

    .line 12
    iget v1, p0, Lcom/google/android/libraries/places/internal/bf;->a:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/internal/bf;->b:I

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;->b()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/bf;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 18
    iget v1, p0, Lcom/google/android/libraries/places/internal/bf;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/bf;->a:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/bf;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SubstringMatch{offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
