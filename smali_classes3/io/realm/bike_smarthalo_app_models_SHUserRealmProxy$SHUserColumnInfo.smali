.class final Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_SHUserRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHUserColumnInfo"
.end annotation


# instance fields
.field authLevelIndex:J

.field dateOfBirthIndex:J

.field deviceIdIndex:J

.field deviceModelIndex:J

.field devicePassIndex:J

.field distanceMetricIndex:J

.field emailIndex:J

.field firstNameIndex:J

.field genderIndex:J

.field heightIndex:J

.field heightMetricIndex:J

.field idIndex:J

.field isConfirmedIndex:J

.field keyIndex:J

.field languageIndex:J

.field lastNameIndex:J

.field maxColumnIndexValue:J

.field pictureIndex:J

.field weightIndex:J

.field weightMetricIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 89
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x13

    .line 63
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SHUser"

    .line 64
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "key"

    const-string v1, "key"

    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    const-string v0, "id"

    const-string v1, "id"

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    const-string v0, "firstName"

    const-string v1, "firstName"

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const-string v0, "lastName"

    const-string v1, "lastName"

    .line 68
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const-string v0, "email"

    const-string v1, "email"

    .line 69
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const-string v0, "gender"

    const-string v1, "gender"

    .line 70
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    const-string v0, "dateOfBirth"

    const-string v1, "dateOfBirth"

    .line 71
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    const-string v0, "height"

    const-string v1, "height"

    .line 72
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    const-string v0, "heightMetric"

    const-string v1, "heightMetric"

    .line 73
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    const-string v0, "weight"

    const-string v1, "weight"

    .line 74
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    const-string v0, "weightMetric"

    const-string v1, "weightMetric"

    .line 75
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    const-string v0, "distanceMetric"

    const-string v1, "distanceMetric"

    .line 76
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    const-string v0, "picture"

    const-string v1, "picture"

    .line 77
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const-string v0, "authLevel"

    const-string v1, "authLevel"

    .line 78
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const-string v0, "deviceModel"

    const-string v1, "deviceModel"

    .line 79
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const-string v0, "deviceId"

    const-string v1, "deviceId"

    .line 80
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const-string v0, "devicePass"

    const-string v1, "devicePass"

    .line 81
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const-string v0, "language"

    const-string v1, "language"

    .line 82
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const-string v0, "isConfirmed"

    const-string v1, "isConfirmed"

    .line 83
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    .line 84
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 94
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 99
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 100
    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 101
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    .line 102
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    .line 103
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    .line 104
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    .line 105
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    .line 106
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    .line 107
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    .line 108
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    .line 109
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    .line 110
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    .line 111
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    .line 112
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    .line 113
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    .line 114
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    .line 115
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    .line 116
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    .line 117
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    .line 118
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    .line 119
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    .line 120
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
