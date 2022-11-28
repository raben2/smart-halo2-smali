.class final Lcom/google/android/libraries/places/internal/eg;
.super Lcom/google/android/libraries/places/internal/fh;
.source "PG"


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/ha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private final c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/libraries/places/api/model/TypeFilter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ha;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/TypeFilter;)V
    .locals 0
    .param p2    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/LocationBias;",
            "Lcom/google/android/libraries/places/api/model/LocationRestriction;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/TypeFilter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/fh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eg;->a:Lcom/google/android/libraries/places/internal/ha;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/eg;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/eg;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/eg;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/eg;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->a:Lcom/google/android/libraries/places/internal/ha;

    return-object v0
.end method

.method public final b()Lcom/google/android/libraries/places/api/model/LocationBias;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final c()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/fh;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 17
    check-cast p1, Lcom/google/android/libraries/places/internal/fh;

    .line 18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->a:Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->a()Lcom/google/android/libraries/places/internal/ha;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/ha;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->b()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->b()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->c()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->c()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 21
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->e()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fh;->e()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/TypeFilter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return v0

    :cond_5
    return v2

    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->a:Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ha;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 27
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/eg;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 29
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/eg;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 31
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/eg;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 33
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/TypeFilter;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eg;->a:Lcom/google/android/libraries/places/internal/ha;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eg;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/eg;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/eg;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/eg;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AutocompleteOptions{placeFields="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationBias="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationRestriction="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", country="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", typeFilter="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
