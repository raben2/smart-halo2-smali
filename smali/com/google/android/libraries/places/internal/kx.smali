.class public final Lcom/google/android/libraries/places/internal/kx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/kx;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 26
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [B

    .line 28
    sput-object v0, Lcom/google/android/libraries/places/internal/kx;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 29
    sget-object v0, Lcom/google/android/libraries/places/internal/kx;->b:[B

    .line 30
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/nc;->a([B)Lcom/google/android/libraries/places/internal/nc;

    return-void
.end method

.method static a(I[BII)I
    .locals 2

    move v0, p0

    move p0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge p0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    aget-byte v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p0, Lcom/google/android/libraries/places/internal/ma;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ma;->i()Lcom/google/android/libraries/places/internal/mb;

    move-result-object p0

    check-cast p1, Lcom/google/android/libraries/places/internal/ma;

    invoke-interface {p0, p1}, Lcom/google/android/libraries/places/internal/mb;->a(Lcom/google/android/libraries/places/internal/ma;)Lcom/google/android/libraries/places/internal/mb;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/mb;->c()Lcom/google/android/libraries/places/internal/ma;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lcom/google/android/libraries/places/internal/ma;)Z
    .locals 0

    .line 21
    instance-of p0, p0, Lcom/google/android/libraries/places/internal/jw;

    const/4 p0, 0x0

    return p0
.end method

.method public static a([B)Z
    .locals 3

    .line 8
    sget-object v0, Lcom/google/android/libraries/places/internal/nm;->a:Lcom/google/android/libraries/places/internal/nn;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/libraries/places/internal/nn;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/libraries/places/internal/kx;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c([B)I
    .locals 2

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/libraries/places/internal/kx;->a(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p0
.end method
