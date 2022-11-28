.class public final Lorg/shredzone/commons/suncalc/MoonTimes;
.super Ljava/lang/Object;
.source "MoonTimes.java"


# instance fields
.field private final rise:Ljava/util/Date;

.field private final set:Ljava/util/Date;

.field private final ye:D


# direct methods
.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;D)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->rise:Ljava/util/Date;

    .line 122
    iput-object p2, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->set:Ljava/util/Date;

    .line 123
    iput-wide p3, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->ye:D

    return-void
.end method

.method private static hoursLater(Ljava/util/Date;Ljava/lang/Double;)Ljava/util/Date;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide v3, 0x4194997000000000L    # 8.64E7

    mul-double p0, p0, v3

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/MoonTimes;
    .locals 6

    .line 48
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lorg/shredzone/commons/suncalc/MoonTimes;->of(Ljava/util/Date;DDLjava/util/TimeZone;)Lorg/shredzone/commons/suncalc/MoonTimes;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Date;DDLjava/util/TimeZone;)Lorg/shredzone/commons/suncalc/MoonTimes;
    .locals 30

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    .line 55
    invoke-static/range {p5 .. p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v5, p0

    .line 56
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x0

    const/16 v6, 0xb

    .line 57
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 58
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 59
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 60
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 64
    invoke-static {v4, v0, v1, v2, v3}, Lorg/shredzone/commons/suncalc/MoonPosition;->of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/MoonPosition;

    move-result-object v6

    invoke-virtual {v6}, Lorg/shredzone/commons/suncalc/MoonPosition;->getAltitude()D

    move-result-wide v6

    const-wide v8, 0x3f630417f4643081L    # 0.0023212879051524586

    sub-double/2addr v6, v8

    const/4 v10, 0x0

    move-wide v14, v6

    move-object v7, v10

    const/4 v6, 0x1

    const-wide/16 v16, 0x0

    :goto_0
    const/16 v5, 0x18

    if-gt v6, v5, :cond_a

    int-to-double v11, v6

    .line 70
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/shredzone/commons/suncalc/MoonTimes;->hoursLater(Ljava/util/Date;Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v5, v0, v1, v2, v3}, Lorg/shredzone/commons/suncalc/MoonPosition;->of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/MoonPosition;

    move-result-object v5

    invoke-virtual {v5}, Lorg/shredzone/commons/suncalc/MoonPosition;->getAltitude()D

    move-result-wide v16

    sub-double v16, v16, v8

    add-int/lit8 v5, v6, 0x1

    int-to-double v8, v5

    .line 71
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/shredzone/commons/suncalc/MoonTimes;->hoursLater(Ljava/util/Date;Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v5, v0, v1, v2, v3}, Lorg/shredzone/commons/suncalc/MoonPosition;->of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/MoonPosition;

    move-result-object v5

    invoke-virtual {v5}, Lorg/shredzone/commons/suncalc/MoonPosition;->getAltitude()D

    move-result-wide v8

    const-wide v20, 0x3f630417f4643081L    # 0.0023212879051524586

    sub-double v8, v8, v20

    add-double v22, v14, v8

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    sub-double v22, v22, v16

    sub-double v26, v8, v14

    div-double v0, v26, v24

    neg-double v2, v0

    mul-double v26, v22, v24

    div-double v2, v2, v26

    mul-double v26, v22, v2

    add-double v26, v26, v0

    mul-double v26, v26, v2

    add-double v26, v26, v16

    mul-double v0, v0, v0

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    mul-double v28, v28, v22

    mul-double v28, v28, v16

    sub-double v0, v0, v28

    const-wide/16 v16, 0x0

    cmpl-double v5, v0, v16

    if-ltz v5, :cond_3

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    mul-double v16, v16, v24

    div-double v0, v0, v16

    sub-double v16, v2, v0

    add-double/2addr v0, v2

    .line 85
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v2, v22

    if-gtz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    cmpg-double v3, v24, v22

    if-gtz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v13, v16, v2

    if-gez v13, :cond_2

    move-wide/from16 v16, v0

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v16, 0x0

    :goto_3
    if-ne v5, v2, :cond_5

    const-wide/16 v18, 0x0

    cmpg-double v0, v14, v18

    if-gez v0, :cond_4

    add-double v11, v11, v16

    .line 98
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v10, v0

    goto :goto_5

    :cond_4
    add-double v11, v11, v16

    .line 100
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    :cond_5
    const-wide/16 v18, 0x0

    const/4 v3, 0x2

    if-ne v5, v3, :cond_8

    cmpg-double v3, v26, v18

    if-gez v3, :cond_6

    move-wide v13, v0

    goto :goto_4

    :cond_6
    move-wide/from16 v13, v16

    :goto_4
    add-double/2addr v13, v11

    .line 103
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    if-gez v3, :cond_7

    move-wide/from16 v0, v16

    :cond_7
    add-double/2addr v11, v0

    .line 104
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v7, v0

    move-object v10, v5

    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    if-eqz v7, :cond_9

    move-wide/from16 v0, v26

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x2

    move-wide v14, v8

    move-wide/from16 v8, v20

    move-wide/from16 v16, v26

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    goto/16 :goto_0

    :cond_a
    move-wide/from16 v0, v16

    .line 114
    :goto_6
    new-instance v2, Lorg/shredzone/commons/suncalc/MoonTimes;

    invoke-static {v4, v10}, Lorg/shredzone/commons/suncalc/MoonTimes;->hoursLater(Ljava/util/Date;Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v4, v7}, Lorg/shredzone/commons/suncalc/MoonTimes;->hoursLater(Ljava/util/Date;Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/shredzone/commons/suncalc/MoonTimes;-><init>(Ljava/util/Date;Ljava/util/Date;D)V

    return-object v2
.end method

.method public static ofUTC(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/MoonTimes;
    .locals 6

    .line 41
    sget-object v5, Lorg/shredzone/commons/suncalc/util/Kopernikus;->UTC:Ljava/util/TimeZone;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lorg/shredzone/commons/suncalc/MoonTimes;->of(Ljava/util/Date;DDLjava/util/TimeZone;)Lorg/shredzone/commons/suncalc/MoonTimes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRise()Ljava/util/Date;
    .locals 4

    .line 130
    iget-object v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->rise:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSet()Ljava/util/Date;
    .locals 4

    .line 137
    iget-object v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->set:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isAlwaysDown()Z
    .locals 5

    .line 153
    iget-object v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->rise:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->set:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->ye:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysUp()Z
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->rise:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->set:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->ye:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoonTimes[rise="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->rise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", set="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/shredzone/commons/suncalc/MoonTimes;->set:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysUp="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/shredzone/commons/suncalc/MoonTimes;->isAlwaysUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysDown="

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/shredzone/commons/suncalc/MoonTimes;->isAlwaysDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
