.class final Lcom/google/android/libraries/places/internal/hz;
.super Lcom/google/android/libraries/places/internal/ia;
.source "PG"


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/hx;Ljava/lang/Character;)V
    .locals 0
    .param p2    # Ljava/lang/Character;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ia;-><init>(Lcom/google/android/libraries/places/internal/hx;Ljava/lang/Character;)V

    .line 5
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/hx;->a:[C

    .line 6
    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Z)V

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

    invoke-direct {p0, v0, p3}, Lcom/google/android/libraries/places/internal/hz;-><init>(Lcom/google/android/libraries/places/internal/hx;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 9
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    :goto_0
    const/4 v1, 0x3

    if-lt p4, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    .line 12
    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p3, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p3, v2

    .line 13
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hz;->b:Lcom/google/android/libraries/places/internal/hx;

    ushr-int/lit8 v3, p3, 0x12

    .line 14
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char v2, v2, v3

    .line 15
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 16
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hz;->b:Lcom/google/android/libraries/places/internal/hx;

    ushr-int/lit8 v3, p3, 0xc

    and-int/lit8 v3, v3, 0x3f

    .line 17
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char v2, v2, v3

    .line 18
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 19
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hz;->b:Lcom/google/android/libraries/places/internal/hx;

    ushr-int/lit8 v3, p3, 0x6

    and-int/lit8 v3, v3, 0x3f

    .line 20
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char v2, v2, v3

    .line 21
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 22
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hz;->b:Lcom/google/android/libraries/places/internal/hx;

    and-int/lit8 p3, p3, 0x3f

    .line 23
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char p3, v2, p3

    .line 24
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, -0x3

    move p3, v1

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    sub-int/2addr v0, p3

    .line 27
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/places/internal/ia;->b(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method
