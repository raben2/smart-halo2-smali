.class public Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
.super Ljava/lang/Exception;
.source "UnknownResponseException.java"


# static fields
.field private static final HEX_ARRAY:[C

.field private static final serialVersionUID:J = -0x78f5e5eeb8bf3699L


# instance fields
.field private final mExpectedOpCode:I

.field private final mExpectedReturnCode:I

.field private final mResponse:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 29
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->HEX_ARRAY:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    new-array p2, p1, [B

    :goto_0
    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->mResponse:[B

    .line 39
    iput p3, p0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->mExpectedReturnCode:I

    .line 40
    iput p4, p0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->mExpectedOpCode:I

    return-void
.end method

.method public static bytesToHex([BII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    .line 49
    array-length v0, p0

    if-le v0, p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/lit8 v0, p2, 0x2

    .line 53
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    .line 55
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 56
    sget-object v4, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 57
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s (response: %s, expected: 0x%02X%02X..)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->mResponse:[B

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->bytesToHex([BII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->mExpectedReturnCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->mExpectedOpCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
