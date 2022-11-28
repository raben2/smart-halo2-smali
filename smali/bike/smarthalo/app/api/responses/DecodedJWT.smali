.class public Lbike/smarthalo/app/api/responses/DecodedJWT;
.super Ljava/lang/Object;
.source "DecodedJWT.java"


# static fields
.field private static final MAXIMUM_DIFFERENCE_FOR_REFRESH:J = 0xa4cb800L


# instance fields
.field public expiresAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exp"
    .end annotation
.end field

.field public issuedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldTokenBeRefreshed()Z
    .locals 5

    .line 24
    iget-wide v0, p0, Lbike/smarthalo/app/api/responses/DecodedJWT;->expiresAt:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
