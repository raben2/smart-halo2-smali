.class final Lcom/google/android/libraries/places/internal/hy;
.super Lcom/google/android/libraries/places/internal/ia;
.source "PG"


# instance fields
.field private final c:[C


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/hx;)V
    .locals 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/ia;-><init>(Lcom/google/android/libraries/places/internal/hx;Ljava/lang/Character;)V

    const/16 v0, 0x200

    .line 4
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/hy;->c:[C

    .line 6
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/hx;->a:[C

    .line 7
    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/go;->a(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy;->c:[C

    ushr-int/lit8 v2, v1, 0x4

    .line 10
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char v2, v3, v2

    .line 11
    aput-char v2, v0, v1

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy;->c:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    .line 13
    iget-object v4, p1, Lcom/google/android/libraries/places/internal/hx;->a:[C

    aget-char v3, v4, v3

    .line 14
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/hx;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hx;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/hy;-><init>(Lcom/google/android/libraries/places/internal/hx;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Appendable;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 18
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 20
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 21
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hy;->c:[C

    aget-char v2, v2, v1

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 22
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hy;->c:[C

    or-int/lit16 v1, v1, 0x100

    aget-char v1, v2, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
