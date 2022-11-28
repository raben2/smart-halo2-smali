.class final Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_StravaLinkedAccountRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StravaLinkedAccountColumnInfo"
.end annotation


# instance fields
.field accountIdIndex:J

.field authenticationTokenExpirationIndex:J

.field authenticationTokenIndex:J

.field imageUrlIndex:J

.field isAutoUploadOnIndex:J

.field maxColumnIndexValue:J

.field refreshTokenIndex:J

.field usernameIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 65
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x7

    .line 51
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "StravaLinkedAccount"

    .line 52
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "accountId"

    const-string v1, "accountId"

    .line 53
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    const-string v0, "authenticationToken"

    const-string v1, "authenticationToken"

    .line 54
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const-string v0, "refreshToken"

    const-string v1, "refreshToken"

    .line 55
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const-string v0, "authenticationTokenExpiration"

    const-string v1, "authenticationTokenExpiration"

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    const-string v0, "isAutoUploadOn"

    const-string v1, "isAutoUploadOn"

    .line 57
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    const-string v0, "username"

    const-string v1, "username"

    .line 58
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const-string v0, "imageUrl"

    const-string v1, "imageUrl"

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    .line 60
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 70
    new-instance v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 75
    check-cast p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 76
    check-cast p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 77
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    .line 78
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    .line 79
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    .line 80
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    .line 81
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    .line 82
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    .line 83
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    .line 84
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
