.class public Lorg/shredzone/commons/suncalc/SunPosition;
.super Ljava/lang/Object;
.source "SunPosition.java"


# instance fields
.field private final altitude:D

.field private final azimuth:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lorg/shredzone/commons/suncalc/SunPosition;->azimuth:D

    .line 51
    iput-wide p3, p0, Lorg/shredzone/commons/suncalc/SunPosition;->altitude:D

    return-void
.end method

.method public static of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/SunPosition;
    .locals 10

    neg-double p3, p3

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p3, p3, v0

    mul-double p1, p1, v0

    .line 40
    invoke-static {p0}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->toDays(Ljava/util/Date;)D

    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->sunCoords(D)Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;

    move-result-object p0

    .line 42
    invoke-static {v0, v1, p3, p4}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->siderealTime(DD)D

    move-result-wide p3

    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->ra:D

    sub-double/2addr p3, v0

    .line 44
    new-instance v0, Lorg/shredzone/commons/suncalc/SunPosition;

    iget-wide v6, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    move-wide v2, p3

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->azimuth(DDD)D

    move-result-wide v8

    iget-wide v6, p0, Lorg/shredzone/commons/suncalc/util/Kopernikus$Coordinates;->dec:D

    invoke-static/range {v2 .. v7}, Lorg/shredzone/commons/suncalc/util/Kopernikus;->altitude(DDD)D

    move-result-wide p0

    invoke-direct {v0, v8, v9, p0, p1}, Lorg/shredzone/commons/suncalc/SunPosition;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/SunPosition;->altitude:D

    return-wide v0
.end method

.method public getAzimuth()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/SunPosition;->azimuth:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SunPosition[azimuth="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/SunPosition;->azimuth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/shredzone/commons/suncalc/SunPosition;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
