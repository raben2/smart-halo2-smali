.class final Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_SHRideRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHRideColumnInfo"
.end annotation


# instance fields
.field avgSpeedIndex:J

.field burntCaloriesIndex:J

.field climbedElevationIndex:J

.field co2Index:J

.field curSpeedIndex:J

.field endTimeIndex:J

.field fitnessIntegrationsIndex:J

.field goodLocationsIndex:J

.field hasStravaUploadRequestIndex:J

.field isActiveIndex:J

.field locationsIndex:J

.field maxColumnIndexValue:J

.field maxSpeedIndex:J

.field timestampIndex:J

.field traveledDistanceIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 79
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xe

    .line 58
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SHRide"

    .line 59
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "timestamp"

    const-string v1, "timestamp"

    .line 60
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    const-string v0, "locations"

    const-string v1, "locations"

    .line 61
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    const-string v0, "goodLocations"

    const-string v1, "goodLocations"

    .line 62
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    const-string v0, "avgSpeed"

    const-string v1, "avgSpeed"

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    const-string v0, "curSpeed"

    const-string v1, "curSpeed"

    .line 64
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    const-string v0, "maxSpeed"

    const-string v1, "maxSpeed"

    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    const-string v0, "climbedElevation"

    const-string v1, "climbedElevation"

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    const-string v0, "traveledDistance"

    const-string v1, "traveledDistance"

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    const-string v0, "burntCalories"

    const-string v1, "burntCalories"

    .line 68
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    const-string v0, "co2"

    const-string v1, "co2"

    .line 69
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    const-string v0, "endTime"

    const-string v1, "endTime"

    .line 70
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    const-string v0, "isActive"

    const-string v1, "isActive"

    .line 71
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    const-string v0, "hasStravaUploadRequest"

    const-string v1, "hasStravaUploadRequest"

    .line 72
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    const-string v0, "fitnessIntegrations"

    const-string v1, "fitnessIntegrations"

    .line 73
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    .line 74
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 84
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 89
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 90
    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 91
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    .line 92
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    .line 93
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    .line 94
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    .line 95
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    .line 96
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    .line 97
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    .line 98
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    .line 99
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    .line 100
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    .line 101
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    .line 102
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    .line 103
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    .line 104
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    .line 105
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
