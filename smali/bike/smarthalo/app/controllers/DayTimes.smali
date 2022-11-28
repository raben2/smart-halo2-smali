.class public Lbike/smarthalo/app/controllers/DayTimes;
.super Ljava/lang/Object;
.source "DayTimes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/DayTimes$DayState;
    }
.end annotation


# static fields
.field public static final DAY_LIGHT_TIME_BUFFER:J = 0x6ddd00L

.field public static final SEGMENT_OF_DAYLIGHT:F = 4.0f


# instance fields
.field public beginningOfDayLight:J

.field public beginningOfMaximumDayLight:J

.field public dayLightLength:J

.field public dayState:Lbike/smarthalo/app/controllers/DayTimes$DayState;

.field public endOfDayLight:J

.field public endOfMaximumDayLight:J

.field public now:J

.field sunrise:Ljava/lang/Long;

.field sunset:Ljava/lang/Long;

.field public tomorrowBeginningOfDayLight:J

.field public tomorrowSunRise:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDayTimes(Landroid/location/Location;Ljava/util/Date;)Lbike/smarthalo/app/controllers/DayTimes;
    .locals 10
    .param p0    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lorg/shredzone/commons/suncalc/SunTimes;->of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/SunTimes;

    move-result-object v0

    const-wide v1, 0x4066800000000000L    # 180.0

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/shredzone/commons/suncalc/SunTimes;->sunsetTime(D)Ljava/util/Date;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 52
    invoke-virtual {v0, v2, v3}, Lorg/shredzone/commons/suncalc/SunTimes;->sunriseTime(D)Ljava/util/Date;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Lbike/smarthalo/app/helpers/DateHelper;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v5, v6, v7, v8, v9}, Lorg/shredzone/commons/suncalc/SunTimes;->of(Ljava/util/Date;DD)Lorg/shredzone/commons/suncalc/SunTimes;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v2, v3}, Lorg/shredzone/commons/suncalc/SunTimes;->sunriseTime(D)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v4

    .line 65
    :cond_1
    new-instance v2, Lbike/smarthalo/app/controllers/DayTimes;

    invoke-direct {v2}, Lbike/smarthalo/app/controllers/DayTimes;-><init>()V

    .line 67
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->sunrise:Ljava/lang/Long;

    .line 68
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->sunset:Ljava/lang/Long;

    .line 70
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    .line 72
    iget-object p1, v2, Lbike/smarthalo/app/controllers/DayTimes;->sunrise:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v3, 0x6ddd00

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfDayLight:J

    .line 73
    iget-object p1, v2, Lbike/smarthalo/app/controllers/DayTimes;->sunset:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->endOfDayLight:J

    .line 75
    iget-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->endOfDayLight:J

    iget-wide v5, v2, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfDayLight:J

    sub-long/2addr v0, v5

    iput-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->dayLightLength:J

    .line 77
    iget-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->dayLightLength:J

    long-to-float p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    float-to-long v0, p1

    add-long/2addr v0, v5

    .line 78
    iput-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfMaximumDayLight:J

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-long v0, p1

    add-long/2addr v0, v5

    .line 79
    iput-wide v0, v2, Lbike/smarthalo/app/controllers/DayTimes;->endOfMaximumDayLight:J

    .line 81
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    iput-wide p0, v2, Lbike/smarthalo/app/controllers/DayTimes;->tomorrowSunRise:J

    .line 82
    iget-wide p0, v2, Lbike/smarthalo/app/controllers/DayTimes;->tomorrowSunRise:J

    sub-long/2addr p0, v3

    iput-wide p0, v2, Lbike/smarthalo/app/controllers/DayTimes;->tomorrowBeginningOfDayLight:J

    .line 84
    invoke-direct {v2}, Lbike/smarthalo/app/controllers/DayTimes;->getDayState()Lbike/smarthalo/app/controllers/DayTimes$DayState;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/app/controllers/DayTimes;->dayState:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    return-object v2

    :cond_2
    :goto_0
    return-object v4
.end method

.method private getDayState()Lbike/smarthalo/app/controllers/DayTimes$DayState;
    .locals 5

    .line 104
    iget-wide v0, p0, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfDayLight:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 105
    sget-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->BeforeDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    goto :goto_0

    .line 106
    :cond_0
    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfMaximumDayLight:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 107
    sget-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->BeforeMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    goto :goto_0

    .line 108
    :cond_1
    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->endOfMaximumDayLight:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 109
    sget-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->MaxDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    goto :goto_0

    .line 110
    :cond_2
    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->endOfDayLight:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 111
    sget-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->AfterMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->AfterDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBeforeDayLightInterval()J
    .locals 4

    .line 90
    iget-wide v0, p0, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfDayLight:J

    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndOfMaximumDayLightInterval()J
    .locals 4

    .line 98
    iget-wide v0, p0, Lbike/smarthalo/app/controllers/DayTimes;->endOfMaximumDayLight:J

    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTomorrowDayLightInterval()J
    .locals 4

    .line 94
    iget-wide v0, p0, Lbike/smarthalo/app/controllers/DayTimes;->tomorrowBeginningOfDayLight:J

    iget-wide v2, p0, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
