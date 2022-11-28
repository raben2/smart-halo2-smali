.class public abstract Lcom/google/android/libraries/places/internal/hw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/hw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/hz;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v3, 0x3d

    .line 10
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/hz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/hz;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/hz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/ia;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 14
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/ia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/ia;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 16
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/hy;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/hy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/hw;->a:Lcom/google/android/libraries/places/internal/hw;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method public final a([BII)Ljava/lang/String;
    .locals 2

    add-int/lit8 p2, p3, 0x0

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/hw;->a(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/google/android/libraries/places/internal/hw;->a(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method abstract a(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
