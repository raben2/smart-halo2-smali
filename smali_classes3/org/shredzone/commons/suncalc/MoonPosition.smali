.class public Lorg/shredzone/commons/suncalc/MoonPosition;
.super Ljava/lang/Object;
.source "MoonPosition.java"


# instance fields
.field private final altitude:D

.field private final azimuth:D

.field private final distance:D

.field private final parallacticAngle:D


# direct methods
.method private constructor <init>(DDDD)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->azimuth:D

    .line 59
    iput-wide p3, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->altitude:D

    .line 60
    iput-wide p5, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->distance:D

    .line 61
    iput-wide p7, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->parallacticAngle:D

    return-void
.end method

.method private static astroRefraction(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    const-wide v0, 0x3f3371cccbf60d38L    # 2.967E-4

    const-wide v2, 0x3f699a5adf9f8d4fL    # 0.00312536

    const-wide v4, 0x3fb6c97a070227cdL    # 0.08901179

    add-double/2addr v4, p0

    div-double/2addr v2, v4

    add-double/2addr p0, v2

    .line 112
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/MoonPosition;
    .locals 21

    move-wide/from16 v0, p3

    neg-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    mul-double v2, v2, p1

    .line 42
    invoke-static/range {p0 .. p0}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->toDays(Ljava/util/Date;)D

    move-result-wide v4

    .line 44
    invoke-static {v4, v5}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->moonCoords(D)Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;

    move-result-object v10

    .line 45
    invoke-static {v4, v5, v0, v1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->siderealTime(DD)D

    move-result-wide v0

    iget-wide v4, v10, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    sub-double/2addr v0, v4

    .line 46
    iget-wide v8, v10, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    move-wide v4, v0

    move-wide v6, v2

    invoke-static/range {v4 .. v9}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->altitude(DDD)D

    move-result-wide v4

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    iget-wide v11, v10, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v8, v8, v11

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iget-wide v8, v10, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v8, v8, v11

    sub-double v18, v6, v8

    .line 50
    invoke-static {v4, v5}, Lorg/shredzone/commons/suncalc/MoonPosition;->astroRefraction(D)D

    move-result-wide v6

    add-double v14, v4, v6

    .line 52
    new-instance v20, Lorg/shredzone/commons/suncalc/MoonPosition;

    iget-wide v8, v10, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    move-wide v4, v0

    move-wide v6, v2

    invoke-static/range {v4 .. v9}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->azimuth(DDD)D

    move-result-wide v12

    iget-wide v0, v10, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dist:D

    move-object/from16 v11, v20

    move-wide/from16 v16, v0

    invoke-direct/range {v11 .. v19}, Lorg/shredzone/commons/suncalc/MoonPosition;-><init>(DDDD)V

    return-object v20
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->altitude:D

    return-wide v0
.end method

.method public getAzimuth()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->azimuth:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->distance:D

    return-wide v0
.end method

.method public getParallacticAngle()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->parallacticAngle:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoonPosition[azimuth="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->azimuth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", parallacticAngle="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonPosition;->parallacticAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
