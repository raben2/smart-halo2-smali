.class public Lbike/smarthalo/app/models/SHSounds;
.super Ljava/lang/Object;
.source "SHSounds.java"


# static fields
.field public static back_on_path_sound:[B

.field public static call_sound:[B

.field public static christmas_sound:[B

.field public static destination_sound:[B

.field public static horn_sound:[B

.field public static info_sound:[B

.field private static phone_high:I

.field private static phone_high_duration:I

.field private static phone_low:I

.field private static phone_low_duration:I

.field private static phone_silence_gap:I

.field public static progress_sound:[B

.field public static sms_sound:[B

.field public static turn_now_sound:[B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x4

    .line 8
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lbike/smarthalo/app/models/SHSounds;->turn_now_sound:[B

    const/16 v1, 0xc

    .line 10
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lbike/smarthalo/app/models/SHSounds;->info_sound:[B

    const/16 v2, 0x8

    .line 15
    new-array v3, v2, [B

    fill-array-data v3, :array_2

    sput-object v3, Lbike/smarthalo/app/models/SHSounds;->progress_sound:[B

    const/16 v3, 0x1c

    .line 20
    new-array v4, v3, [B

    fill-array-data v4, :array_3

    sput-object v4, Lbike/smarthalo/app/models/SHSounds;->back_on_path_sound:[B

    .line 30
    new-array v4, v1, [B

    fill-array-data v4, :array_4

    sput-object v4, Lbike/smarthalo/app/models/SHSounds;->sms_sound:[B

    const/16 v4, 0x1d2

    .line 36
    sput v4, Lbike/smarthalo/app/models/SHSounds;->phone_high:I

    const/16 v4, 0x50

    .line 37
    sput v4, Lbike/smarthalo/app/models/SHSounds;->phone_high_duration:I

    const/16 v5, 0x171

    .line 38
    sput v5, Lbike/smarthalo/app/models/SHSounds;->phone_low:I

    .line 39
    sput v4, Lbike/smarthalo/app/models/SHSounds;->phone_low_duration:I

    const/16 v4, 0x3e8

    .line 40
    sput v4, Lbike/smarthalo/app/models/SHSounds;->phone_silence_gap:I

    const/16 v4, 0x24

    .line 42
    new-array v4, v4, [B

    sget v5, Lbike/smarthalo/app/models/SHSounds;->phone_high:I

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v4, v7

    int-to-byte v6, v5

    const/4 v8, 0x1

    aput-byte v6, v4, v8

    const/4 v6, 0x2

    aput-byte v7, v4, v6

    sget v6, Lbike/smarthalo/app/models/SHSounds;->phone_high_duration:I

    int-to-byte v8, v6

    const/4 v9, 0x3

    aput-byte v8, v4, v9

    sget v8, Lbike/smarthalo/app/models/SHSounds;->phone_low:I

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v0

    int-to-byte v0, v8

    const/4 v9, 0x5

    aput-byte v0, v4, v9

    sget v0, Lbike/smarthalo/app/models/SHSounds;->phone_low_duration:I

    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x6

    aput-byte v9, v4, v10

    int-to-byte v9, v0

    const/4 v10, 0x7

    aput-byte v9, v4, v10

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    int-to-byte v2, v5

    const/16 v9, 0x9

    aput-byte v2, v4, v9

    const/16 v2, 0xa

    aput-byte v7, v4, v2

    int-to-byte v2, v6

    const/16 v9, 0xb

    aput-byte v2, v4, v9

    shr-int/lit8 v2, v8, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    int-to-byte v1, v8

    const/16 v2, 0xd

    aput-byte v1, v4, v2

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xe

    aput-byte v1, v4, v2

    int-to-byte v1, v0

    const/16 v2, 0xf

    aput-byte v1, v4, v2

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x10

    aput-byte v1, v4, v2

    int-to-byte v1, v5

    const/16 v9, 0x11

    aput-byte v1, v4, v9

    const/16 v1, 0x12

    aput-byte v7, v4, v1

    int-to-byte v1, v6

    const/16 v9, 0x13

    aput-byte v1, v4, v9

    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v9, 0x14

    aput-byte v1, v4, v9

    int-to-byte v1, v8

    const/16 v9, 0x15

    aput-byte v1, v4, v9

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v9, 0x16

    aput-byte v1, v4, v9

    int-to-byte v1, v0

    const/16 v9, 0x17

    aput-byte v1, v4, v9

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v9, 0x18

    aput-byte v1, v4, v9

    int-to-byte v1, v5

    const/16 v5, 0x19

    aput-byte v1, v4, v5

    const/16 v1, 0x1a

    aput-byte v7, v4, v1

    int-to-byte v1, v6

    const/16 v5, 0x1b

    aput-byte v1, v4, v5

    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    int-to-byte v1, v8

    const/16 v3, 0x1d

    aput-byte v1, v4, v3

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v3, 0x1e

    aput-byte v1, v4, v3

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, v4, v1

    const/16 v0, 0x20

    aput-byte v7, v4, v0

    const/16 v0, 0x21

    aput-byte v7, v4, v0

    sget v0, Lbike/smarthalo/app/models/SHSounds;->phone_silence_gap:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v3, 0x22

    aput-byte v1, v4, v3

    int-to-byte v0, v0

    const/16 v1, 0x23

    aput-byte v0, v4, v1

    sput-object v4, Lbike/smarthalo/app/models/SHSounds;->call_sound:[B

    .line 54
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lbike/smarthalo/app/models/SHSounds;->destination_sound:[B

    .line 61
    new-array v0, v2, [B

    fill-array-data v0, :array_6

    sput-object v0, Lbike/smarthalo/app/models/SHSounds;->horn_sound:[B

    const/16 v0, 0x34

    .line 72
    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lbike/smarthalo/app/models/SHSounds;->christmas_sound:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x6at
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x5t
        0x0t
        0x58t
        0x1t
        0x5dt
        0x0t
        0x63t
        0x1t
        0x49t
        0x0t
        0x39t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x25t
        0x0t
        0x40t
        0x1t
        -0x79t
        0x0t
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x2t
        -0x46t
        0x0t
        0x64t
        0x2t
        -0x1dt
        0x0t
        0x64t
        0x3t
        0xft
        0x0t
        0x64t
        0x3t
        0x3et
        0x0t
        0x64t
        0x3t
        0x70t
        0x0t
        0x64t
        0x3t
        -0x5ct
        0x0t
        0x64t
        0x3t
        -0x25t
        0x0t
        0x64t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x5t
        0x0t
        0x4ft
        0x1t
        -0x79t
        0x0t
        0x71t
        0x2t
        0xbt
        0x0t
        -0x38t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x5t
        0x0t
        0x51t
        0x1t
        0x49t
        0x0t
        0x6bt
        0x1t
        -0x79t
        0x0t
        0x69t
        0x2t
        0xbt
        0x0t
        -0x3dt
    .end array-data

    :array_6
    .array-data 1
        0x1t
        -0x2et
        0x0t
        -0x6t
        0x0t
        0x0t
        0x0t
        0x64t
        0x1t
        -0x2et
        0x1t
        -0xct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x4at
        0x0t
        -0x38t
        0x1t
        0x4at
        0x0t
        -0x38t
        0x1t
        0x4at
        0x1t
        0x2ct
        0x0t
        0x0t
        0x0t
        0x64t
        0x1t
        0x4at
        0x0t
        -0x38t
        0x1t
        0x4at
        0x0t
        -0x38t
        0x1t
        0x4at
        0x1t
        0x2ct
        0x0t
        0x0t
        0x0t
        0x64t
        0x1t
        0x4at
        0x0t
        -0x38t
        0x1t
        -0x78t
        0x0t
        -0x38t
        0x1t
        0x6t
        0x0t
        -0x38t
        0x1t
        0x26t
        0x0t
        -0x38t
        0x1t
        0x4at
        0x1t
        -0x70t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrackDuration([B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 92
    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return v1
.end method
