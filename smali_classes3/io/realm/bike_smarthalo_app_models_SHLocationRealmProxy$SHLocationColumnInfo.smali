.class final Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_SHLocationRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHLocationColumnInfo"
.end annotation


# instance fields
.field accuracyIndex:J

.field addressIndex:J

.field altitudeIndex:J

.field descriptionIndex:J

.field headingIndex:J

.field keyIndex:J

.field latitudeIndex:J

.field longitudeIndex:J

.field maxColumnIndexValue:J

.field speedIndex:J

.field timestampIndex:J

.field titleIndex:J

.field typeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 75
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xc

    .line 56
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SHLocation"

    .line 57
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "key"

    const-string v1, "key"

    .line 58
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    const-string v0, "title"

    const-string v1, "title"

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const-string v0, "description"

    const-string v1, "description"

    .line 60
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const-string v0, "address"

    const-string v1, "address"

    .line 61
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const-string v0, "type"

    const-string v1, "type"

    .line 62
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    const-string v0, "latitude"

    const-string v1, "latitude"

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    const-string v0, "longitude"

    const-string v1, "longitude"

    .line 64
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    const-string v0, "altitude"

    const-string v1, "altitude"

    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    const-string v0, "speed"

    const-string v1, "speed"

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    const-string v0, "heading"

    const-string v1, "heading"

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    const-string v0, "accuracy"

    const-string v1, "accuracy"

    .line 68
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    const-string v0, "timestamp"

    const-string v1, "timestamp"

    .line 69
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    .line 70
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 80
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 85
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 86
    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 87
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    .line 88
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    .line 89
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    .line 90
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    .line 91
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    .line 92
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    .line 93
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    .line 94
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    .line 95
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    .line 96
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    .line 97
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    .line 98
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    .line 99
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
