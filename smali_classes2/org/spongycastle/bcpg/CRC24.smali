.class public Lorg/spongycastle/bcpg/CRC24;
.super Ljava/lang/Object;
.source "CRC24.java"


# static fields
.field private static final CRC24_INIT:I = 0xb704ce

.field private static final CRC24_POLY:I = 0x1864cfb


# instance fields
.field private crc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xb704ce

    .line 8
    iput v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    return v0
.end method

.method public reset()V
    .locals 1

    const v0, 0xb704ce

    .line 35
    iput v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    return-void
.end method

.method public update(I)V
    .locals 2

    .line 17
    iget v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    shl-int/lit8 p1, p1, 0x10

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    .line 20
    iget v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    .line 21
    iget v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const v1, 0x1864cfb

    xor-int/2addr v0, v1

    .line 23
    iput v0, p0, Lorg/spongycastle/bcpg/CRC24;->crc:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
