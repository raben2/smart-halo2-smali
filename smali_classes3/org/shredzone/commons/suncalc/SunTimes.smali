.class public Lorg/shredzone/commons/suncalc/SunTimes;
.super Ljava/lang/Object;
.source "SunTimes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/shredzone/commons/suncalc/SunTimes$Time;
    }
.end annotation


# static fields
.field private static final J0:D = 9.0E-4


# instance fields
.field private final dec:D

.field private final jnoon:D

.field private final l:D

.field private final lw:D

.field private final m:D

.field private final n:J

.field private final phi:D


# direct methods
.method private constructor <init>(DDDDJDD)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-wide p1, p0, Lorg/shredzone/commons/suncalc/SunTimes;->jnoon:D

    .line 197
    iput-wide p3, p0, Lorg/shredzone/commons/suncalc/SunTimes;->lw:D

    .line 198
    iput-wide p5, p0, Lorg/shredzone/commons/suncalc/SunTimes;->phi:D

    .line 199
    iput-wide p7, p0, Lorg/shredzone/commons/suncalc/SunTimes;->dec:D

    .line 200
    iput-wide p9, p0, Lorg/shredzone/commons/suncalc/SunTimes;->n:J

    .line 201
    iput-wide p11, p0, Lorg/shredzone/commons/suncalc/SunTimes;->m:D

    .line 202
    iput-wide p13, p0, Lorg/shredzone/commons/suncalc/SunTimes;->l:D

    return-void
.end method

.method private static approxTransit(DDJ)D
    .locals 0

    add-double/2addr p0, p2

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p0, p2

    const-wide p2, 0x3f4d7dbf487fcb92L    # 9.0E-4

    add-double/2addr p0, p2

    long-to-double p2, p4

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static fromJulian(D)Ljava/util/Date;
    .locals 3

    .line 268
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    const-wide v1, 0x41429ec600000000L    # 2440588.0

    sub-double/2addr p0, v1

    const-wide v1, 0x4194997000000000L    # 8.64E7

    mul-double p0, p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private static getSetJ(DDDDJDD)D
    .locals 8

    move-wide v0, p0

    move-wide v2, p4

    move-wide v4, p6

    .line 275
    invoke-static/range {v0 .. v5}, Lorg/shredzone/commons/suncalc/SunTimes;->hourAngle(DDD)D

    move-result-wide v2

    move-wide v4, p2

    move-wide/from16 v6, p8

    .line 276
    invoke-static/range {v2 .. v7}, Lorg/shredzone/commons/suncalc/SunTimes;->approxTransit(DDJ)D

    move-result-wide v0

    move-wide p0, v0

    move-wide/from16 p2, p10

    move-wide/from16 p4, p12

    .line 277
    invoke-static/range {p0 .. p5}, Lorg/shredzone/commons/suncalc/SunTimes;->solarTransitJ(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static hourAngle(DDD)D
    .locals 4

    .line 281
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    sub-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static julianCycle(DD)J
    .locals 2

    const-wide v0, 0x3f4d7dbf487fcb92L    # 9.0E-4

    sub-double/2addr p0, v0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p2, v0

    sub-double/2addr p0, p2

    .line 264
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/SunTimes;
    .locals 22

    move-wide/from16 v0, p3

    neg-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    mul-double v2, v2, p1

    .line 179
    invoke-static/range {p0 .. p0}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->toDays(Ljava/util/Date;)D

    move-result-wide v4

    .line 180
    invoke-static {v4, v5, v0, v1}, Lorg/shredzone/commons/suncalc/SunTimes;->julianCycle(DD)J

    move-result-wide v13

    const-wide/16 v4, 0x0

    move-wide v6, v0

    move-wide v8, v13

    .line 181
    invoke-static/range {v4 .. v9}, Lorg/shredzone/commons/suncalc/SunTimes;->approxTransit(DDJ)D

    move-result-wide v6

    .line 183
    invoke-static {v6, v7}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->solarMeanAnomaly(D)D

    move-result-wide v15

    .line 184
    invoke-static/range {v15 .. v16}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->eclipticLongitude(D)D

    move-result-wide v4

    const-wide/16 v8, 0x0

    .line 185
    invoke-static {v4, v5, v8, v9}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->declination(DD)D

    move-result-wide v17

    move-wide v8, v15

    move-wide v10, v4

    .line 187
    invoke-static/range {v6 .. v11}, Lorg/shredzone/commons/suncalc/SunTimes;->solarTransitJ(DDD)D

    move-result-wide v6

    .line 189
    new-instance v19, Lorg/shredzone/commons/suncalc/SunTimes;

    move-wide/from16 v20, v4

    move-object/from16 v4, v19

    move-wide v5, v6

    move-wide v7, v0

    move-wide v9, v2

    move-wide/from16 v11, v17

    move-wide/from16 v17, v20

    invoke-direct/range {v4 .. v18}, Lorg/shredzone/commons/suncalc/SunTimes;-><init>(DDDDJDD)V

    return-object v19
.end method

.method private static solarTransitJ(DDD)D
    .locals 2

    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    add-double/2addr p0, v0

    .line 289
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v0, 0x3f75b573eab367a1L    # 0.0053

    mul-double p2, p2, v0

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    mul-double p4, p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide p4, 0x3f7c432ca57a786cL    # 0.0069

    mul-double p2, p2, p4

    sub-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public getTime(Lorg/shredzone/commons/suncalc/SunTimes$Time;)Ljava/util/Date;
    .locals 4

    .line 214
    sget-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->SOLAR_NOON:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    if-ne p1, v0, :cond_0

    .line 215
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/SunTimes;->jnoon:D

    invoke-static {v0, v1}, Lorg/shredzone/commons/suncalc/SunTimes;->fromJulian(D)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    sget-object v0, Lorg/shredzone/commons/suncalc/SunTimes$Time;->NADIR:Lorg/shredzone/commons/suncalc/SunTimes$Time;

    if-ne p1, v0, :cond_1

    .line 217
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/SunTimes;->jnoon:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/shredzone/commons/suncalc/SunTimes;->fromJulian(D)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 218
    :cond_1
    invoke-virtual {p1}, Lorg/shredzone/commons/suncalc/SunTimes$Time;->isRising()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p1}, Lorg/shredzone/commons/suncalc/SunTimes$Time;->getAngle()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/shredzone/commons/suncalc/SunTimes;->sunriseTime(D)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 221
    :cond_2
    invoke-virtual {p1}, Lorg/shredzone/commons/suncalc/SunTimes$Time;->getAngle()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/shredzone/commons/suncalc/SunTimes;->sunsetTime(D)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public sunriseTime(D)Ljava/util/Date;
    .locals 17

    move-object/from16 v0, p0

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p1, v1

    .line 232
    iget-wide v5, v0, Lorg/shredzone/commons/suncalc/SunTimes;->lw:D

    iget-wide v7, v0, Lorg/shredzone/commons/suncalc/SunTimes;->phi:D

    iget-wide v9, v0, Lorg/shredzone/commons/suncalc/SunTimes;->dec:D

    iget-wide v11, v0, Lorg/shredzone/commons/suncalc/SunTimes;->n:J

    iget-wide v13, v0, Lorg/shredzone/commons/suncalc/SunTimes;->m:D

    iget-wide v1, v0, Lorg/shredzone/commons/suncalc/SunTimes;->l:D

    move-wide v15, v1

    invoke-static/range {v3 .. v16}, Lorg/shredzone/commons/suncalc/SunTimes;->getSetJ(DDDDJDD)D

    move-result-wide v1

    .line 233
    iget-wide v3, v0, Lorg/shredzone/commons/suncalc/SunTimes;->jnoon:D

    sub-double/2addr v1, v3

    sub-double/2addr v3, v1

    .line 234
    invoke-static {v3, v4}, Lorg/shredzone/commons/suncalc/SunTimes;->fromJulian(D)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public sunsetTime(D)Ljava/util/Date;
    .locals 17

    move-object/from16 v0, p0

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p1, v1

    .line 244
    iget-wide v5, v0, Lorg/shredzone/commons/suncalc/SunTimes;->lw:D

    iget-wide v7, v0, Lorg/shredzone/commons/suncalc/SunTimes;->phi:D

    iget-wide v9, v0, Lorg/shredzone/commons/suncalc/SunTimes;->dec:D

    iget-wide v11, v0, Lorg/shredzone/commons/suncalc/SunTimes;->n:J

    iget-wide v13, v0, Lorg/shredzone/commons/suncalc/SunTimes;->m:D

    iget-wide v1, v0, Lorg/shredzone/commons/suncalc/SunTimes;->l:D

    move-wide v15, v1

    invoke-static/range {v3 .. v16}, Lorg/shredzone/commons/suncalc/SunTimes;->getSetJ(DDDDJDD)D

    move-result-wide v1

    .line 245
    invoke-static {v1, v2}, Lorg/shredzone/commons/suncalc/SunTimes;->fromJulian(D)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SunTimes["

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Lorg/shredzone/commons/suncalc/SunTimes$Time;->values()[Lorg/shredzone/commons/suncalc/SunTimes$Time;

    move-result-object v1

    const/4 v2, 0x0

    .line 253
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lorg/shredzone/commons/suncalc/SunTimes;->getTime(Lorg/shredzone/commons/suncalc/SunTimes$Time;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
