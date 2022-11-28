.class Lcom/google/android/libraries/places/internal/ia;
.super Lcom/google/android/libraries/places/internal/hw;
.source "PG"


# instance fields
.field public final b:Lcom/google/android/libraries/places/internal/hx;

.field private final c:Ljava/lang/Character;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/hx;Ljava/lang/Character;)V
    .locals 4
    .param p2    # Ljava/lang/Character;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hw;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hx;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 7
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/hx;->f:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/hx;->f:[B

    aget-byte p1, p1, v2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-string p1, "Padding character %s was already in alphabet"

    .line 9
    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p3    # Ljava/lang/Character;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/hx;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hx;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/libraries/places/internal/ia;-><init>(Lcom/google/android/libraries/places/internal/hx;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v0, v0, Lcom/google/android/libraries/places/internal/hx;->d:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v1, v1, Lcom/google/android/libraries/places/internal/hx;->e:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/places/internal/jq;->a(IILjava/math/RoundingMode;)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method a(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 14
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 16
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v2, v2, Lcom/google/android/libraries/places/internal/hx;->e:I

    sub-int v3, p4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/android/libraries/places/internal/ia;->b(Ljava/lang/Appendable;[BII)V

    .line 17
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v1, v1, Lcom/google/android/libraries/places/internal/hx;->e:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final b(Ljava/lang/Appendable;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 20
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v0, v0, Lcom/google/android/libraries/places/internal/hx;->e:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/go;->a(Z)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_1

    add-int v4, p3, v0

    .line 24
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    shl-int/lit8 p2, p2, 0x3

    .line 27
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget p3, p3, Lcom/google/android/libraries/places/internal/hx;->c:I

    sub-int/2addr p2, p3

    :goto_2
    shl-int/lit8 p3, p4, 0x3

    if-ge v1, p3, :cond_2

    sub-int p3, p2, v1

    ushr-long v4, v2, p3

    long-to-int p3, v4

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v0, v0, Lcom/google/android/libraries/places/internal/hx;->b:I

    and-int/2addr p3, v0

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    .line 32
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char p3, v0, p3

    .line 33
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 34
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget p3, p3, Lcom/google/android/libraries/places/internal/hx;->c:I

    add-int/2addr v1, p3

    goto :goto_2

    .line 36
    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    if-eqz p2, :cond_3

    .line 37
    :goto_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget p2, p2, Lcom/google/android/libraries/places/internal/hx;->e:I

    shl-int/lit8 p2, p2, 0x3

    if-ge v1, p2, :cond_3

    .line 38
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 39
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget p2, p2, Lcom/google/android/libraries/places/internal/hx;->c:I

    add-int/2addr v1, p2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 48
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/ia;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Lcom/google/android/libraries/places/internal/ia;

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/hx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    .line 51
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/hx;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hj;->a([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/hx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ia;->b:Lcom/google/android/libraries/places/internal/hx;

    iget v1, v1, Lcom/google/android/libraries/places/internal/hx;->c:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 44
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
