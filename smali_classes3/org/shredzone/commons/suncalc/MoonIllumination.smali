.class public Lorg/shredzone/commons/suncalc/MoonIllumination;
.super Ljava/lang/Object;
.source "MoonIllumination.java"


# instance fields
.field private final angle:D

.field private final fraction:D

.field private final phase:D


# direct methods
.method private constructor <init>(DDD)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->fraction:D

    .line 64
    iput-wide p3, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->phase:D

    .line 65
    iput-wide p5, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->angle:D

    return-void
.end method

.method public static of(Ljava/util/Date;)Lorg/shredzone/commons/suncalc/MoonIllumination;
    .locals 14

    .line 43
    invoke-static {p0}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->toDays(Ljava/util/Date;)D

    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->sunCoords(D)Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;

    move-result-object p0

    .line 45
    invoke-static {v0, v1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->moonCoords(D)Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;

    move-result-object v0

    .line 49
    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-wide v3, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iget-wide v3, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    iget-wide v5, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    iget-wide v7, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v5, 0x41a1d55e60000000L    # 1.49598E8

    mul-double v3, v3, v5

    iget-wide v7, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dist:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v5

    sub-double/2addr v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 51
    iget-wide v3, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    iget-wide v7, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    iget-wide v5, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    iget-wide v7, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    .line 52
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    iget-wide v9, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    iget-wide v9, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    iget-wide v11, v0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    sub-double/2addr v5, v7

    .line 51
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 54
    new-instance p0, Lorg/shredzone/commons/suncalc/MoonIllumination;

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v8, v3, v5

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    .line 56
    invoke-static {v12, v13}, Ljava/lang/Math;->signum(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    add-double v10, v1, v3

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/shredzone/commons/suncalc/MoonIllumination;-><init>(DDD)V

    return-object p0
.end method


# virtual methods
.method public getAngle()D
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->angle:D

    return-wide v0
.end method

.method public getFraction()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->fraction:D

    return-wide v0
.end method

.method public getPhase()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->phase:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoonIllumination[fraction="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->fraction:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->phase:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", angle="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/MoonIllumination;->angle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
