.class final Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_SHPastRideRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHPastRideColumnInfo"
.end annotation


# instance fields
.field averageSpeedIndex:J

.field caloriesIndex:J

.field co2Index:J

.field createdAtIndex:J

.field distanceIndex:J

.field durationIndex:J

.field elevationIndex:J

.field endIndex:J

.field fitnessIntegrationsIndex:J

.field hasDeleteRequestIndex:J

.field hasStravaUploadRequestIndex:J

.field hasUpdateRequestIndex:J

.field idIndex:J

.field maxColumnIndexValue:J

.field stampIndex:J

.field startIndex:J

.field updatedAtIndex:J

.field user_idIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 85
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x11

    .line 61
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SHPastRide"

    .line 62
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "stamp"

    const-string v1, "stamp"

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    const-string v0, "id"

    const-string v1, "id"

    .line 64
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    const-string v0, "start"

    const-string v1, "start"

    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const-string v0, "end"

    const-string v1, "end"

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const-string v0, "distance"

    const-string v1, "distance"

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    const-string v0, "averageSpeed"

    const-string v1, "averageSpeed"

    .line 68
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    const-string v0, "elevation"

    const-string v1, "elevation"

    .line 69
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    const-string v0, "calories"

    const-string v1, "calories"

    .line 70
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    const-string v0, "duration"

    const-string v1, "duration"

    .line 71
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    const-string v0, "co2"

    const-string v1, "co2"

    .line 72
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    const-string v0, "createdAt"

    const-string v1, "createdAt"

    .line 73
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const-string v0, "updatedAt"

    const-string v1, "updatedAt"

    .line 74
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const-string v0, "user_id"

    const-string v1, "user_id"

    .line 75
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    const-string v0, "hasDeleteRequest"

    const-string v1, "hasDeleteRequest"

    .line 76
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    const-string v0, "hasStravaUploadRequest"

    const-string v1, "hasStravaUploadRequest"

    .line 77
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    const-string v0, "hasUpdateRequest"

    const-string v1, "hasUpdateRequest"

    .line 78
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    const-string v0, "fitnessIntegrations"

    const-string v1, "fitnessIntegrations"

    .line 79
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    .line 80
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 90
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 95
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 96
    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 97
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    .line 98
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    .line 99
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    .line 100
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    .line 101
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    .line 102
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    .line 103
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    .line 104
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    .line 105
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    .line 106
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    .line 107
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    .line 108
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    .line 109
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    .line 110
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    .line 111
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    .line 112
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    .line 113
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    .line 114
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
