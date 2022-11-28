.class public Lbike/smarthalo/app/helpers/BrightnessHelper;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClimbIncrement(JJ)J
    .locals 0

    sub-long/2addr p0, p2

    long-to-float p0, p0

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x42700000    # 60.0f

    div-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public static getFirstQuarterOfDayLightBrightness(JJJ)J
    .locals 0

    sub-long/2addr p4, p2

    .line 21
    div-long/2addr p4, p0

    const-wide/16 p0, 0x28

    add-long/2addr p4, p0

    return-wide p4
.end method

.method public static getLastQuarterOfDayLightBrightness(JJJ)J
    .locals 0

    sub-long/2addr p4, p2

    .line 26
    div-long/2addr p4, p0

    long-to-int p0, p4

    rsub-int/lit8 p0, p0, 0x64

    int-to-long p0, p0

    return-wide p0
.end method
