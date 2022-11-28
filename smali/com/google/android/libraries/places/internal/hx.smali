.class final Lcom/google/android/libraries/places/internal/hx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[C

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:[B

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hx;->g:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hx;->a:[C

    .line 4
    :try_start_0
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/jq;->a(ILjava/math/RoundingMode;)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/hx;->c:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    iget p1, p0, Lcom/google/android/libraries/places/internal/hx;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p1

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 9
    :try_start_1
    div-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/hx;->d:I

    .line 10
    iget v0, p0, Lcom/google/android/libraries/places/internal/hx;->c:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/hx;->e:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    array-length p1, p2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/hx;->b:I

    const/16 p1, 0x80

    .line 15
    new-array v1, p1, [B

    const/4 v2, -0x1

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 17
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 18
    aget-char v5, p2, v4

    if-ge v5, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "Non-ASCII character: %s"

    .line 19
    invoke-static {v6, v7, v5}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/String;C)V

    .line 20
    aget-byte v6, v1, v5

    if-ne v6, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    const-string v7, "Duplicate character: %s"

    invoke-static {v6, v7, v5}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/String;C)V

    int-to-byte v6, v4

    .line 21
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    :cond_2
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/hx;->f:[B

    .line 24
    :goto_3
    iget p1, p0, Lcom/google/android/libraries/places/internal/hx;->e:I

    if-ge v3, p1, :cond_3

    shl-int/lit8 p1, v3, 0x3

    .line 25
    iget p2, p0, Lcom/google/android/libraries/places/internal/hx;->c:I

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/jq;->a(IILjava/math/RoundingMode;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal alphabet "

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p2, p2

    const/16 v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal alphabet length "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 29
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/hx;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Lcom/google/android/libraries/places/internal/hx;

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->a:[C

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/hx;->a:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->a:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->g:Ljava/lang/String;

    return-object v0
.end method
