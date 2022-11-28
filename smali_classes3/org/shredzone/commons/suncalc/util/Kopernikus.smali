.class public final Lorg/shredzone/commons/suncalc/util/Kopernikus;
.super Ljava/lang/Object;
.source "Kopernikus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;
    }
.end annotation


# static fields
.field public static final DAY_MS:J = 0x5265c00L

.field public static final E:D = 0.40909994067971484

.field public static final J1970:J = 0x253d8cL

.field public static final J2000:J = 0x256859L

.field public static final RAD:D = 0.017453292519943295

.field public static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 29
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/shredzone/commons/suncalc/util/Kopernikus;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static altitude(DDD)D
    .locals 4

    .line 80
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static azimuth(DDD)D
    .locals 4

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p0, p0, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide p4

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p4, p4, p2

    sub-double/2addr p0, p4

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static declination(DD)D
    .locals 6

    .line 88
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3fda2eb18480f45fL    # 0.40909994067971484

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p2, p2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static eclipticLongitude(D)D
    .locals 6

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ffea305532617c2L    # 1.9148

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3f33a92a30553261L    # 3.0E-4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    add-double/2addr p0, v0

    const-wide v0, 0x3ffcbed85e0e09a6L    # 1.796593062783907

    add-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static moonCoords(D)Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;
    .locals 13

    const-wide v0, 0x402a5a5093964a5aL    # 13.176396

    mul-double v0, v0, p0

    const-wide v2, 0x406b4a1cac083127L    # 218.316

    add-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    const-wide v4, 0x402a2146c332f017L    # 13.064993

    mul-double v4, v4, p0

    const-wide v6, 0x4060ded0e5604189L    # 134.963

    add-double/2addr v4, v6

    mul-double v4, v4, v2

    const-wide v6, 0x402a756d5cfaacdaL    # 13.22935

    mul-double p0, p0, v6

    const-wide v6, 0x4057516872b020c5L    # 93.272

    add-double/2addr p0, v6

    mul-double p0, p0, v2

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v6, 0x3fbc197a4121c319L    # 0.10976375665792339

    mul-double v2, v2, v6

    add-double/2addr v0, v2

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v2, 0x3fb6e980f3f00e2bL    # 0.08950048404226922

    mul-double p0, p0, v2

    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40d46a4000000000L    # 20905.0

    mul-double v2, v2, v4

    const-wide v4, 0x41177fa400000000L    # 385001.0

    sub-double v11, v4, v2

    .line 54
    new-instance v2, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;

    invoke-static {v0, v1, p0, p1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->declination(DD)D

    move-result-wide v7

    invoke-static {v0, v1, p0, p1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->rightAscension(DD)D

    move-result-wide v9

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;-><init>(DDD)V

    return-object v2
.end method

.method public static rightAscension(DD)D
    .locals 6

    .line 92
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3fda2eb18480f45fL    # 0.40909994067971484

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p2, p2, v2

    sub-double/2addr v0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static siderealTime(DD)D
    .locals 2

    const-wide v0, 0x40768fc51d25aab4L    # 360.9856235

    mul-double p0, p0, v0

    const-wide v0, 0x4071828f5c28f5c3L    # 280.16

    add-double/2addr p0, v0

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static solarMeanAnomaly(D)D
    .locals 2

    const-wide v0, 0x3fef8a099930e901L    # 0.98560028

    mul-double p0, p0, v0

    const-wide v0, 0x40765877318fc505L    # 357.5291

    add-double/2addr p0, v0

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static sunCoords(D)Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;
    .locals 5

    .line 58
    invoke-static {p0, p1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->solarMeanAnomaly(D)D

    move-result-wide p0

    .line 59
    invoke-static {p0, p1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->eclipticLongitude(D)D

    move-result-wide p0

    .line 61
    new-instance v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->declination(DD)D

    move-result-wide v3

    invoke-static {p0, p1, v1, v2}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->rightAscension(DD)D

    move-result-wide p0

    invoke-direct {v0, v3, v4, p0, p1}, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;-><init>(DD)V

    return-object v0
.end method

.method public static toDays(Ljava/util/Date;)D
    .locals 4

    .line 41
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide v2, 0x41429ec600000000L    # 2440588.0

    add-double/2addr v0, v2

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v2

    return-wide v0
.end method
