.class final Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_UserFavouriteRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserFavouriteColumnInfo"
.end annotation


# instance fields
.field addressIndex:J

.field createdAtIndex:J

.field favouriteTypeIndex:J

.field idIndex:J

.field labelIndex:J

.field latitudeIndex:J

.field longitudeIndex:J

.field maxColumnIndexValue:J

.field updatedAtIndex:J

.field userIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 69
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x9

    .line 53
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "UserFavourite"

    .line 54
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    const-string v1, "id"

    .line 55
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    const-string v0, "userId"

    const-string v1, "userId"

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    const-string v0, "favouriteType"

    const-string v1, "favouriteType"

    .line 57
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const-string v0, "address"

    const-string v1, "address"

    .line 58
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const-string v0, "label"

    const-string v1, "label"

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const-string v0, "latitude"

    const-string v1, "latitude"

    .line 60
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    const-string v0, "longitude"

    const-string v1, "longitude"

    .line 61
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    const-string v0, "createdAt"

    const-string v1, "createdAt"

    .line 62
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    const-string v0, "updatedAt"

    const-string v1, "updatedAt"

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    .line 64
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 74
    new-instance v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 79
    check-cast p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 80
    check-cast p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 81
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    .line 82
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    .line 83
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    .line 84
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    .line 85
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    .line 86
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    .line 87
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    .line 88
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    .line 89
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    .line 90
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
