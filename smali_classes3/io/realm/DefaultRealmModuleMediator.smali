.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)TE;"
        }
    .end annotation

    .line 185
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 187
    :goto_0
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 189
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHUser;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;Lbike/smarthalo/app/models/SHUser;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 191
    :cond_1
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 193
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHPastRide;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;Lbike/smarthalo/app/models/SHPastRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 195
    :cond_2
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 197
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHSettings;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;Lbike/smarthalo/app/models/SHSettings;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 199
    :cond_3
    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;

    .line 201
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/FitnessIntegrations;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;Lbike/smarthalo/app/models/FitnessIntegrations;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 203
    :cond_4
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 205
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHRide;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;Lbike/smarthalo/app/models/SHRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 207
    :cond_5
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 209
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHLocation;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 211
    :cond_6
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy$SHAppDataColumnInfo;

    .line 213
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHAppData;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy$SHAppDataColumnInfo;Lbike/smarthalo/app/models/SHAppData;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHAppData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 215
    :cond_7
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 216
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 217
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;Lbike/smarthalo/app/models/StravaLinkedAccount;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 219
    :cond_8
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 220
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 221
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/SHGoal;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;Lbike/smarthalo/app/models/SHGoal;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 223
    :cond_9
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 224
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 225
    move-object v4, p2

    check-cast v4, Lbike/smarthalo/app/models/UserFavourite;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;Lbike/smarthalo/app/models/UserFavourite;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 227
    :cond_a
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 63
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    const-class v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    const-class v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    const-class v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;

    move-result-object p1

    return-object p1

    .line 75
    :cond_3
    const-class v0, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    move-result-object p1

    return-object p1

    .line 78
    :cond_4
    const-class v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    move-result-object p1

    return-object p1

    .line 81
    :cond_5
    const-class v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy$SHAppDataColumnInfo;

    move-result-object p1

    return-object p1

    .line 84
    :cond_6
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    move-result-object p1

    return-object p1

    .line 87
    :cond_7
    const-class v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    move-result-object p1

    return-object p1

    .line 90
    :cond_8
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    invoke-static {p2}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    move-result-object p1

    return-object p1

    .line 93
    :cond_9
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 500
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 501
    check-cast p1, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHUser;IILjava/util/Map;)Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 503
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHPastRide;IILjava/util/Map;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 506
    :cond_1
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    check-cast p1, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHSettings;IILjava/util/Map;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 509
    :cond_2
    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 510
    check-cast p1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/FitnessIntegrations;IILjava/util/Map;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 512
    :cond_3
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 513
    check-cast p1, Lbike/smarthalo/app/models/SHRide;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHRide;IILjava/util/Map;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 515
    :cond_4
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 516
    check-cast p1, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHLocation;IILjava/util/Map;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 518
    :cond_5
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    check-cast p1, Lbike/smarthalo/app/models/SHAppData;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHAppData;IILjava/util/Map;)Lbike/smarthalo/app/models/SHAppData;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 521
    :cond_6
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 522
    check-cast p1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/StravaLinkedAccount;IILjava/util/Map;)Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 524
    :cond_7
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 525
    check-cast p1, Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHGoal;IILjava/util/Map;)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 527
    :cond_8
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 528
    check-cast p1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {p1, v2, p2, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/UserFavourite;IILjava/util/Map;)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 530
    :cond_9
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Lorg/json/JSONObject;",
            "Z)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 421
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 423
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHUser;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 426
    :cond_0
    const-class v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 429
    :cond_1
    const-class v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 432
    :cond_2
    const-class v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 435
    :cond_3
    const-class v0, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 438
    :cond_4
    const-class v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 441
    :cond_5
    const-class v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 442
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHAppData;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 444
    :cond_6
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 445
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 447
    :cond_7
    const-class v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 450
    :cond_8
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    invoke-static {p2, p3, p4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 453
    :cond_9
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Landroid/util/JsonReader;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 461
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHUser;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 464
    :cond_0
    const-class v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 467
    :cond_1
    const-class v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 470
    :cond_2
    const-class v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 473
    :cond_3
    const-class v0, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 476
    :cond_4
    const-class v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 479
    :cond_5
    const-class v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 480
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHAppData;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 482
    :cond_6
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 483
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 485
    :cond_7
    const-class v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 486
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 488
    :cond_8
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 489
    invoke-static {p2, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 491
    :cond_9
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public getExpectedObjectSchemaInfoMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    .line 178
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 100
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SHUser"

    return-object p1

    .line 103
    :cond_0
    const-class v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SHPastRide"

    return-object p1

    .line 106
    :cond_1
    const-class v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SHSettings"

    return-object p1

    .line 109
    :cond_2
    const-class v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "FitnessIntegrations"

    return-object p1

    .line 112
    :cond_3
    const-class v0, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "SHRide"

    return-object p1

    .line 115
    :cond_4
    const-class v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "SHLocation"

    return-object p1

    .line 118
    :cond_5
    const-class v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "SHAppData"

    return-object p1

    .line 121
    :cond_6
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "StravaLinkedAccount"

    return-object p1

    .line 124
    :cond_7
    const-class v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "SHGoal"

    return-object p1

    .line 127
    :cond_8
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "UserFavourite"

    return-object p1

    .line 130
    :cond_9
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 234
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 236
    :goto_0
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    check-cast p2, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 238
    :cond_1
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    check-cast p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 240
    :cond_2
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    check-cast p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;)J

    goto :goto_1

    .line 242
    :cond_3
    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    check-cast p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    goto :goto_1

    .line 244
    :cond_4
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    check-cast p2, Lbike/smarthalo/app/models/SHRide;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;)J

    goto :goto_1

    .line 246
    :cond_5
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 247
    check-cast p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    goto :goto_1

    .line 248
    :cond_6
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    check-cast p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHAppData;Ljava/util/Map;)J

    goto :goto_1

    .line 250
    :cond_7
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    check-cast p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;)J

    goto :goto_1

    .line 252
    :cond_8
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 253
    check-cast p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;)J

    goto :goto_1

    .line 254
    :cond_9
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 255
    check-cast p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 257
    :cond_a
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insert(Lio/realm/Realm;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 271
    instance-of v2, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 273
    :goto_0
    const-class v3, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    check-cast p2, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 275
    :cond_1
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    check-cast p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 277
    :cond_2
    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    check-cast p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;)J

    goto :goto_1

    .line 279
    :cond_3
    const-class v3, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 280
    check-cast p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    goto :goto_1

    .line 281
    :cond_4
    const-class v3, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    check-cast p2, Lbike/smarthalo/app/models/SHRide;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;)J

    goto :goto_1

    .line 283
    :cond_5
    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 284
    check-cast p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    goto :goto_1

    .line 285
    :cond_6
    const-class v3, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 286
    check-cast p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHAppData;Ljava/util/Map;)J

    goto :goto_1

    .line 287
    :cond_7
    const-class v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 288
    check-cast p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;)J

    goto :goto_1

    .line 289
    :cond_8
    const-class v3, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 290
    check-cast p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;)J

    goto :goto_1

    .line 291
    :cond_9
    const-class v3, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 292
    check-cast p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;)J

    .line 296
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 297
    const-class p2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 298
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 299
    :cond_a
    const-class p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 300
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 301
    :cond_b
    const-class p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 302
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 303
    :cond_c
    const-class p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 304
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 305
    :cond_d
    const-class p2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 306
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 307
    :cond_e
    const-class p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 308
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 309
    :cond_f
    const-class p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 310
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 311
    :cond_10
    const-class p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 312
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 313
    :cond_11
    const-class p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 314
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 315
    :cond_12
    const-class p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 316
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 318
    :cond_13
    invoke-static {v2}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 294
    :cond_14
    invoke-static {v2}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_15
    :goto_2
    return-void
.end method

.method public insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 328
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 330
    :goto_0
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    check-cast p2, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 332
    :cond_1
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    check-cast p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 334
    :cond_2
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    check-cast p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;)J

    goto :goto_1

    .line 336
    :cond_3
    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    check-cast p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    goto :goto_1

    .line 338
    :cond_4
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 339
    check-cast p2, Lbike/smarthalo/app/models/SHRide;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;)J

    goto :goto_1

    .line 340
    :cond_5
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    check-cast p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    goto :goto_1

    .line 342
    :cond_6
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 343
    check-cast p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHAppData;Ljava/util/Map;)J

    goto :goto_1

    .line 344
    :cond_7
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 345
    check-cast p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;)J

    goto :goto_1

    .line 346
    :cond_8
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 347
    check-cast p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;)J

    goto :goto_1

    .line 348
    :cond_9
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 349
    check-cast p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 351
    :cond_a
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 357
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/RealmModel;

    .line 365
    instance-of v2, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 367
    :goto_0
    const-class v3, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    check-cast p2, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 369
    :cond_1
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    check-cast p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;)J

    goto/16 :goto_1

    .line 371
    :cond_2
    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    check-cast p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHSettings;Ljava/util/Map;)J

    goto :goto_1

    .line 373
    :cond_3
    const-class v3, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 374
    check-cast p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    goto :goto_1

    .line 375
    :cond_4
    const-class v3, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    check-cast p2, Lbike/smarthalo/app/models/SHRide;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;)J

    goto :goto_1

    .line 377
    :cond_5
    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 378
    check-cast p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    goto :goto_1

    .line 379
    :cond_6
    const-class v3, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 380
    check-cast p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHAppData;Ljava/util/Map;)J

    goto :goto_1

    .line 381
    :cond_7
    const-class v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 382
    check-cast p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;)J

    goto :goto_1

    .line 383
    :cond_8
    const-class v3, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 384
    check-cast p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;)J

    goto :goto_1

    .line 385
    :cond_9
    const-class v3, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 386
    check-cast p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {p1, p2, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;)J

    .line 390
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 391
    const-class p2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 392
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 393
    :cond_a
    const-class p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 394
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 395
    :cond_b
    const-class p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 396
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 397
    :cond_c
    const-class p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 398
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 399
    :cond_d
    const-class p2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 400
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 401
    :cond_e
    const-class p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 402
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 403
    :cond_f
    const-class p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 404
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 405
    :cond_10
    const-class p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 406
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 407
    :cond_11
    const-class p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 408
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 409
    :cond_12
    const-class p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 410
    invoke-static {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_2

    .line 412
    :cond_13
    invoke-static {v2}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 388
    :cond_14
    invoke-static {v2}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_15
    :goto_2
    return-void
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 135
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 137
    :try_start_0
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 138
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 140
    const-class p2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 141
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 143
    :cond_0
    :try_start_1
    const-class p2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 144
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 146
    :cond_1
    :try_start_2
    const-class p2, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 147
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 149
    :cond_2
    :try_start_3
    const-class p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 150
    new-instance p2, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 152
    :cond_3
    :try_start_4
    const-class p2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 153
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 155
    :cond_4
    :try_start_5
    const-class p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 156
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 158
    :cond_5
    :try_start_6
    const-class p2, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 159
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 161
    :cond_6
    :try_start_7
    const-class p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 162
    new-instance p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 164
    :cond_7
    :try_start_8
    const-class p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 165
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 167
    :cond_8
    :try_start_9
    const-class p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 168
    new-instance p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 170
    :cond_9
    :try_start_a
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception p1

    .line 172
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 173
    throw p1
.end method

.method public transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
