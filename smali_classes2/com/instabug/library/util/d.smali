.class public Lcom/instabug/library/util/d;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static a(FI)F
    .locals 0

    int-to-float p1, p1

    mul-float p0, p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static a(JI)J
    .locals 2

    int-to-long v0, p2

    mul-long p0, p0, v0

    const-wide/16 v0, 0x64

    .line 1
    div-long/2addr p0, v0

    return-wide p0
.end method
