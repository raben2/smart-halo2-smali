.class public Lbike/smarthalo/app/models/SHRide;
.super Lio/realm/RealmObject;
.source "SHRide.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;


# instance fields
.field public avgSpeed:D

.field public burntCalories:D

.field public climbedElevation:D

.field public co2:D

.field public curSpeed:D

.field public endTime:J

.field public fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

.field public goodLocations:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field

.field public hasStravaUploadRequest:Z

.field public isActive:Z

.field public locations:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field

.field public maxSpeed:D

.field public timestamp:Ljava/lang/Long;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public traveledDistance:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHRide;->realmSet$timestamp(Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHRide;->realmSet$isActive(Z)V

    return-void
.end method

.method private static getRideFormattedDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 103
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addStravaIntegration(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-direct {v0}, Lbike/smarthalo/app/models/FitnessIntegrations;-><init>()V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHRide;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/FitnessIntegrations;->realmSet$stravaId(Ljava/lang/String;)V

    return-void
.end method

.method public addToGoodLocations(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHRide;->realmSet$goodLocations(Lio/realm/RealmList;)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public asPastRide()Lbike/smarthalo/app/models/SHPastRide;
    .locals 5

    .line 112
    new-instance v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHPastRide;-><init>()V

    const/4 v1, -0x1

    .line 114
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$id(I)V

    .line 115
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$stamp(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$avgSpeed()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$averageSpeed(F)V

    .line 117
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$distance(F)V

    .line 118
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$calories(F)V

    .line 119
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$co2(F)V

    .line 120
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$duration(I)V

    .line 121
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$climbedElevation()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$elevation(F)V

    .line 122
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/models/SHRide;->getRideFormattedDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$start(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/models/SHRide;->getRideFormattedDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$end(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    .line 125
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$hasStravaUploadRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    const-string v1, ""

    .line 128
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$updatedAt(Ljava/lang/String;)V

    const-string v1, ""

    .line 129
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$createdAt(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAvgSpeed()D
    .locals 2

    .line 155
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$avgSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBurntCalories()D
    .locals 2

    .line 175
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v0

    return-wide v0
.end method

.method public getClimbedElevation()D
    .locals 2

    .line 167
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$climbedElevation()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCo2()D
    .locals 2

    .line 183
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurSpeed()D
    .locals 2

    .line 159
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$curSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 187
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGoodLocations()Lio/realm/RealmList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getLocations()Lio/realm/RealmList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSpeed()D
    .locals 2

    .line 163
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$maxSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStravaId()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/FitnessIntegrations;->realmGet$stravaId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTraveledDistance()D
    .locals 2

    .line 171
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getUploadBody()Lbike/smarthalo/app/models/RideUploadPayload;
    .locals 6

    .line 53
    new-instance v0, Lbike/smarthalo/app/models/RideUploadPayload;

    invoke-direct {v0}, Lbike/smarthalo/app/models/RideUploadPayload;-><init>()V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/models/SHRide;->getRideFormattedDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/models/SHRide;->getRideFormattedDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 60
    iput-object v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->start:Ljava/lang/String;

    .line 61
    iput-object v2, v0, Lbike/smarthalo/app/models/RideUploadPayload;->end:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->distance:I

    .line 63
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$avgSpeed()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$avgSpeed()D

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->averageSpeed:D

    .line 64
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$climbedElevation()D

    move-result-wide v1

    iput-wide v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->elevation:D

    .line 65
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->calories:I

    .line 66
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->stamp:J

    .line 67
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->duration:J

    .line 68
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$maxSpeed()D

    move-result-wide v1

    iput-wide v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->maxSpeed:D

    .line 69
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide v1

    iput-wide v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->co2:D

    .line 70
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 76
    :goto_1
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 79
    new-instance v4, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v4}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 80
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$accuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$accuracy(F)V

    .line 81
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$speed(F)V

    .line 82
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 83
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$heading()F

    move-result v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$heading(F)V

    .line 84
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 85
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$altitude(Ljava/lang/Double;)V

    .line 87
    new-instance v5, Lbike/smarthalo/app/models/RideUploadLocation;

    invoke-direct {v5}, Lbike/smarthalo/app/models/RideUploadLocation;-><init>()V

    .line 88
    iput-object v4, v5, Lbike/smarthalo/app/models/RideUploadLocation;->coords:Lbike/smarthalo/app/models/SHLocation;

    .line 89
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v3

    iput-wide v3, v5, Lbike/smarthalo/app/models/RideUploadLocation;->timestamp:J

    .line 90
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_1
    iput-object v1, v0, Lbike/smarthalo/app/models/RideUploadPayload;->markers:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    return v0
.end method

.method public realmGet$avgSpeed()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->avgSpeed:D

    return-wide v0
.end method

.method public realmGet$burntCalories()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->burntCalories:D

    return-wide v0
.end method

.method public realmGet$climbedElevation()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->climbedElevation:D

    return-wide v0
.end method

.method public realmGet$co2()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->co2:D

    return-wide v0
.end method

.method public realmGet$curSpeed()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->curSpeed:D

    return-wide v0
.end method

.method public realmGet$endTime()J
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->endTime:J

    return-wide v0
.end method

.method public realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHRide;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    return-object v0
.end method

.method public realmGet$goodLocations()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHRide;->goodLocations:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$hasStravaUploadRequest()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHRide;->hasStravaUploadRequest:Z

    return v0
.end method

.method public realmGet$isActive()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHRide;->isActive:Z

    return v0
.end method

.method public realmGet$locations()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHRide;->locations:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$maxSpeed()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->maxSpeed:D

    return-wide v0
.end method

.method public realmGet$timestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHRide;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$traveledDistance()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHRide;->traveledDistance:D

    return-wide v0
.end method

.method public realmSet$avgSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->avgSpeed:D

    return-void
.end method

.method public realmSet$burntCalories(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->burntCalories:D

    return-void
.end method

.method public realmSet$climbedElevation(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->climbedElevation:D

    return-void
.end method

.method public realmSet$co2(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->co2:D

    return-void
.end method

.method public realmSet$curSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->curSpeed:D

    return-void
.end method

.method public realmSet$endTime(J)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->endTime:J

    return-void
.end method

.method public realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHRide;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    return-void
.end method

.method public realmSet$goodLocations(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHRide;->goodLocations:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$hasStravaUploadRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHRide;->hasStravaUploadRequest:Z

    return-void
.end method

.method public realmSet$isActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHRide;->isActive:Z

    return-void
.end method

.method public realmSet$locations(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHRide;->locations:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$maxSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->maxSpeed:D

    return-void
.end method

.method public realmSet$timestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHRide;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$traveledDistance(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHRide;->traveledDistance:D

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/models/SHRide;->realmSet$endTime(J)V

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHRide;->realmSet$timestamp(Ljava/lang/Long;)V

    return-void
.end method
