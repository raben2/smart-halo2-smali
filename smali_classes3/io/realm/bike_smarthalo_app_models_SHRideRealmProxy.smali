.class public Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;
.super Lbike/smarthalo/app/models/SHRide;
.source "bike_smarthalo_app_models_SHRideRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

.field private goodLocationsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field

.field private locationsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/SHRide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 117
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;Lbike/smarthalo/app/models/SHRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHRide;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHRide;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    .line 913
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    .line 915
    check-cast v2, Lbike/smarthalo/app/models/SHRide;

    return-object v2

    .line 918
    :cond_0
    move-object v8, v1

    check-cast v8, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    .line 920
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 921
    new-instance v3, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxColumnIndexValue:J

    move-object/from16 v9, p5

    invoke-direct {v3, v2, v4, v5, v9}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 924
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 925
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 926
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 927
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 928
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 929
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 930
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 931
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 932
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 933
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 934
    iget-wide v4, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 938
    invoke-virtual {v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 939
    invoke-static {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    move-result-object v10

    .line 940
    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 945
    invoke-virtual {v10}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v13

    .line 946
    invoke-virtual {v13}, Lio/realm/RealmList;->clear()V

    const/4 v14, 0x0

    .line 947
    :goto_0
    invoke-virtual {v11}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v14, v0, :cond_2

    .line 948
    invoke-virtual {v11, v14}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbike/smarthalo/app/models/SHLocation;

    .line 949
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    if-eqz v0, :cond_1

    .line 951
    invoke-virtual {v13, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 953
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v0

    invoke-virtual {v13, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 958
    :cond_2
    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 960
    invoke-virtual {v10}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v13

    .line 961
    invoke-virtual {v13}, Lio/realm/RealmList;->clear()V

    .line 962
    :goto_2
    invoke-virtual {v11}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 963
    invoke-virtual {v11, v12}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbike/smarthalo/app/models/SHLocation;

    .line 964
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    if-eqz v0, :cond_3

    .line 966
    invoke-virtual {v13, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 968
    :cond_3
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v0

    invoke-virtual {v13, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 973
    :cond_4
    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v0, 0x0

    .line 975
    invoke-virtual {v10, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto :goto_4

    .line 977
    :cond_5
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    if-eqz v0, :cond_6

    .line 979
    invoke-virtual {v10, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto :goto_4

    .line 981
    :cond_6
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;

    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;Lbike/smarthalo/app/models/FitnessIntegrations;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {v10, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    :goto_4
    return-object v10
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;Lbike/smarthalo/app/models/SHRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHRide;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHRide;"
        }
    .end annotation

    .line 869
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 870
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 871
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 874
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 872
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 878
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 879
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 881
    check-cast v1, Lbike/smarthalo/app/models/SHRide;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 887
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 888
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    .line 889
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_3

    .line 892
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    .line 894
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const/4 v0, 0x0

    move-object v3, v1

    goto :goto_1

    .line 900
    :cond_4
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 901
    new-instance v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;-><init>()V

    .line 902
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 905
    throw p0

    :cond_5
    move v0, p3

    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 909
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;Lbike/smarthalo/app/models/SHRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;
    .locals 1

    .line 562
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/SHRide;IILjava/util/Map;)Lbike/smarthalo/app/models/SHRide;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/SHRide;"
        }
    .end annotation

    const/4 v0, 0x0

    if-gt p1, p2, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_5

    .line 1334
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 1337
    new-instance v1, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {v1}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 1338
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1341
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 1342
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    return-object p0

    .line 1344
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lbike/smarthalo/app/models/SHRide;

    .line 1345
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 1347
    :goto_0
    move-object v2, v1

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    .line 1348
    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    .line 1349
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$timestamp(Ljava/lang/Long;)V

    const/4 v3, 0x0

    if-ne p1, p2, :cond_3

    .line 1353
    invoke-interface {v2, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$locations(Lio/realm/RealmList;)V

    goto :goto_2

    .line 1355
    :cond_3
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v4

    .line 1356
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 1357
    invoke-interface {v2, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$locations(Lio/realm/RealmList;)V

    add-int/lit8 v6, p1, 0x1

    .line 1359
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    .line 1361
    invoke-virtual {v4, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v9, v6, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHLocation;IILjava/util/Map;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v9

    .line 1362
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne p1, p2, :cond_5

    .line 1368
    invoke-interface {v2, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$goodLocations(Lio/realm/RealmList;)V

    goto :goto_4

    .line 1370
    :cond_5
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    .line 1371
    new-instance v4, Lio/realm/RealmList;

    invoke-direct {v4}, Lio/realm/RealmList;-><init>()V

    .line 1372
    invoke-interface {v2, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$goodLocations(Lio/realm/RealmList;)V

    add-int/lit8 v5, p1, 0x1

    .line 1374
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v6

    :goto_3
    if-ge v3, v6, :cond_6

    .line 1376
    invoke-virtual {v0, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v7, v5, p2, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/SHLocation;IILjava/util/Map;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v7

    .line 1377
    invoke-virtual {v4, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1380
    :cond_6
    :goto_4
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$avgSpeed(D)V

    .line 1381
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$curSpeed(D)V

    .line 1382
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$maxSpeed(D)V

    .line 1383
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$climbedElevation(D)V

    .line 1384
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$traveledDistance(D)V

    .line 1385
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$burntCalories(D)V

    .line 1386
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$co2(D)V

    .line 1387
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$endTime(J)V

    .line 1388
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v0

    invoke-interface {v2, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$isActive(Z)V

    .line 1389
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v0

    invoke-interface {v2, v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$hasStravaUploadRequest(Z)V

    .line 1392
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/FitnessIntegrations;IILjava/util/Map;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    invoke-interface {v2, p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    return-object v1

    :cond_7
    :goto_5
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 539
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "SHRide"

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "timestamp"

    .line 540
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "locations"

    .line 541
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "SHLocation"

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "goodLocations"

    .line 542
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "SHLocation"

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "avgSpeed"

    .line 543
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "curSpeed"

    .line 544
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "maxSpeed"

    .line 545
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "climbedElevation"

    .line 546
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "traveledDistance"

    .line 547
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "burntCalories"

    .line 548
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "co2"

    .line 549
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "endTime"

    .line 550
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isActive"

    .line 551
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "hasStravaUploadRequest"

    .line 552
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "fitnessIntegrations"

    .line 553
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v2, "FitnessIntegrations"

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 554
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHRide;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 579
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 580
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 581
    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    const-string v5, "timestamp"

    .line 583
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 584
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-string v5, "timestamp"

    .line 586
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 589
    sget-object v5, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v5}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/BaseRealm$RealmObjectContext;

    .line 591
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v6, v5

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 592
    new-instance v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    invoke-direct {v2}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    invoke-virtual {v5}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v5}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 595
    throw p0

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_7

    const-string v2, "locations"

    .line 599
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "locations"

    .line 600
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "goodLocations"

    .line 602
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "goodLocations"

    .line 603
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "fitnessIntegrations"

    .line 605
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "fitnessIntegrations"

    .line 606
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "timestamp"

    .line 608
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "timestamp"

    .line 609
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 610
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p0, v2, v1, v3, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    goto :goto_2

    .line 612
    :cond_5
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    const-string v4, "timestamp"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    goto :goto_2

    .line 615
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'timestamp\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 619
    :cond_7
    :goto_2
    move-object v0, v2

    check-cast v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    const-string v3, "locations"

    .line 620
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    const-string v3, "locations"

    .line 621
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 622
    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$locations(Lio/realm/RealmList;)V

    goto :goto_4

    .line 624
    :cond_8
    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    const-string v3, "locations"

    .line 625
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 626
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 627
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {p0, v6, p2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v6

    .line 628
    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    const-string v3, "goodLocations"

    .line 632
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "goodLocations"

    .line 633
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 634
    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$goodLocations(Lio/realm/RealmList;)V

    goto :goto_6

    .line 636
    :cond_a
    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    const-string v3, "goodLocations"

    .line 637
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 638
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 639
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v5

    .line 640
    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    const-string v3, "avgSpeed"

    .line 644
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "avgSpeed"

    .line 645
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "avgSpeed"

    .line 648
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$avgSpeed(D)V

    goto :goto_7

    .line 646
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'avgSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_7
    const-string v3, "curSpeed"

    .line 651
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "curSpeed"

    .line 652
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "curSpeed"

    .line 655
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$curSpeed(D)V

    goto :goto_8

    .line 653
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'curSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_8
    const-string v3, "maxSpeed"

    .line 658
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "maxSpeed"

    .line 659
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "maxSpeed"

    .line 662
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$maxSpeed(D)V

    goto :goto_9

    .line 660
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'maxSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_9
    const-string v3, "climbedElevation"

    .line 665
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "climbedElevation"

    .line 666
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "climbedElevation"

    .line 669
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$climbedElevation(D)V

    goto :goto_a

    .line 667
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'climbedElevation\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_a
    const-string v3, "traveledDistance"

    .line 672
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "traveledDistance"

    .line 673
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "traveledDistance"

    .line 676
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$traveledDistance(D)V

    goto :goto_b

    .line 674
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'traveledDistance\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_b
    const-string v3, "burntCalories"

    .line 679
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "burntCalories"

    .line 680
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "burntCalories"

    .line 683
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$burntCalories(D)V

    goto :goto_c

    .line 681
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'burntCalories\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_c
    const-string v3, "co2"

    .line 686
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "co2"

    .line 687
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "co2"

    .line 690
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$co2(D)V

    goto :goto_d

    .line 688
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'co2\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_d
    const-string v3, "endTime"

    .line 693
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "endTime"

    .line 694
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "endTime"

    .line 697
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$endTime(J)V

    goto :goto_e

    .line 695
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'endTime\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_e
    const-string v3, "isActive"

    .line 700
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "isActive"

    .line 701
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "isActive"

    .line 704
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$isActive(Z)V

    goto :goto_f

    .line 702
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isActive\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_f
    const-string v3, "hasStravaUploadRequest"

    .line 707
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "hasStravaUploadRequest"

    .line 708
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "hasStravaUploadRequest"

    .line 711
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$hasStravaUploadRequest(Z)V

    goto :goto_10

    .line 709
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasStravaUploadRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_10
    const-string v3, "fitnessIntegrations"

    .line 714
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "fitnessIntegrations"

    .line 715
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 716
    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto :goto_11

    :cond_20
    const-string v1, "fitnessIntegrations"

    .line 718
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    .line 719
    invoke-interface {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    :cond_21
    :goto_11
    return-object v2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHRide;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    new-instance v0, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 731
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    .line 732
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 733
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 734
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "timestamp"

    .line 736
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 737
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$timestamp(Ljava/lang/Long;)V

    goto :goto_1

    .line 740
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 741
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$timestamp(Ljava/lang/Long;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "locations"

    .line 744
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 745
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_2

    .line 746
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 747
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$locations(Lio/realm/RealmList;)V

    goto :goto_0

    .line 749
    :cond_2
    new-instance v4, Lio/realm/RealmList;

    invoke-direct {v4}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$locations(Lio/realm/RealmList;)V

    .line 750
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 751
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 752
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v4

    .line 753
    invoke-interface {v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 755
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_4
    const-string v5, "goodLocations"

    .line 757
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 758
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_5

    .line 759
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 760
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$goodLocations(Lio/realm/RealmList;)V

    goto :goto_0

    .line 762
    :cond_5
    new-instance v4, Lio/realm/RealmList;

    invoke-direct {v4}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$goodLocations(Lio/realm/RealmList;)V

    .line 763
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 764
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 765
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v4

    .line 766
    invoke-interface {v1}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 768
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_7
    const-string v5, "avgSpeed"

    .line 770
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 771
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 772
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$avgSpeed(D)V

    goto/16 :goto_0

    .line 774
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 775
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'avgSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "curSpeed"

    .line 777
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 778
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 779
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$curSpeed(D)V

    goto/16 :goto_0

    .line 781
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 782
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'curSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string v5, "maxSpeed"

    .line 784
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 785
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_c

    .line 786
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$maxSpeed(D)V

    goto/16 :goto_0

    .line 788
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 789
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'maxSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string v5, "climbedElevation"

    .line 791
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 792
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_e

    .line 793
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$climbedElevation(D)V

    goto/16 :goto_0

    .line 795
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 796
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'climbedElevation\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    const-string v5, "traveledDistance"

    .line 798
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 799
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_10

    .line 800
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$traveledDistance(D)V

    goto/16 :goto_0

    .line 802
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 803
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'traveledDistance\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v5, "burntCalories"

    .line 805
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 806
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_12

    .line 807
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$burntCalories(D)V

    goto/16 :goto_0

    .line 809
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 810
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'burntCalories\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-string v5, "co2"

    .line 812
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 813
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_14

    .line 814
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$co2(D)V

    goto/16 :goto_0

    .line 816
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 817
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'co2\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    const-string v5, "endTime"

    .line 819
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 820
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_16

    .line 821
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$endTime(J)V

    goto/16 :goto_0

    .line 823
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 824
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'endTime\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const-string v5, "isActive"

    .line 826
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 827
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_18

    .line 828
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$isActive(Z)V

    goto/16 :goto_0

    .line 830
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 831
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isActive\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const-string v5, "hasStravaUploadRequest"

    .line 833
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 834
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1a

    .line 835
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$hasStravaUploadRequest(Z)V

    goto/16 :goto_0

    .line 837
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 838
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasStravaUploadRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const-string v5, "fitnessIntegrations"

    .line 840
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 841
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_1c

    .line 842
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 843
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto/16 :goto_0

    .line 845
    :cond_1c
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v4

    .line 846
    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto/16 :goto_0

    .line 849
    :cond_1d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 852
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_1f

    .line 856
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    return-object p0

    .line 854
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'timestamp\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 558
    sget-object v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHRide"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;)J
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 989
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 992
    :cond_0
    const-class v3, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 993
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 994
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 995
    iget-wide v10, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    .line 996
    move-object/from16 v16, v1

    check-cast v16, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v12

    if-nez v12, :cond_1

    .line 999
    invoke-static {v13, v14, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 1001
    :cond_1
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v4, v13

    move-wide v6, v10

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 1004
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide v10, v4

    goto :goto_1

    .line 1006
    :cond_2
    invoke-static {v12}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v10, v4

    .line 1008
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1012
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1013
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLocation;

    .line 1014
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_3

    .line 1016
    invoke-static {v0, v5, v2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1018
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_2

    .line 1022
    :cond_4
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1024
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    iget-wide v5, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-direct {v4, v3, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1025
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 1026
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_5

    .line 1028
    invoke-static {v0, v3, v2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1030
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_3

    .line 1033
    :cond_6
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v17

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide v8, v10

    move-wide/from16 v19, v10

    move-wide/from16 v10, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1034
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v10

    move-wide/from16 v8, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1035
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1036
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1037
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1038
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1039
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1040
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1041
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1042
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1044
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1046
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_7

    .line 1048
    invoke-static {v0, v1, v2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1050
    :cond_7
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    :cond_8
    return-wide v19
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1056
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1057
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 1059
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    .line 1061
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1062
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lbike/smarthalo/app/models/SHRide;

    .line 1063
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    instance-of v3, v11, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v11

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1067
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1070
    :cond_1
    move-object v15, v11

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v16

    if-nez v16, :cond_2

    .line 1073
    invoke-static {v12, v13, v9, v10}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 1075
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide v3, v12

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 1078
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v9, v10, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_2

    .line 1080
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v7, v3

    .line 1082
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1086
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v2, v7, v8}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    move-wide/from16 v16, v9

    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-direct {v4, v5, v9, v10}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1087
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLocation;

    .line 1088
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_4

    .line 1090
    invoke-static {v0, v5, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1092
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v9

    .line 1096
    :cond_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1098
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v2, v7, v8}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-direct {v4, v5, v9, v10}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1099
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLocation;

    .line 1100
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_7

    .line 1102
    invoke-static {v0, v5, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1104
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_4

    .line 1107
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v18, v7

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1108
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1109
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1110
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1111
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1112
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1113
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1114
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1115
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1116
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1118
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1120
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_9

    .line 1122
    invoke-static {v0, v3, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1124
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v18

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    :cond_a
    move-wide/from16 v9, v16

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;)J
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1130
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1131
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 1133
    :cond_0
    const-class v3, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1134
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 1136
    iget-wide v10, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    .line 1137
    move-object/from16 v16, v1

    check-cast v16, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1140
    invoke-static {v13, v14, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 1142
    :cond_1
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v4, v13

    move-wide v6, v10

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 1145
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide v10, v4

    goto :goto_1

    :cond_2
    move-wide v10, v4

    .line 1147
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    new-instance v1, Lio/realm/internal/OsList;

    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-direct {v1, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1150
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1151
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Lio/realm/internal/OsList;->size()J

    move-result-wide v8

    cmp-long v12, v6, v8

    if-nez v12, :cond_4

    .line 1153
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    .line 1155
    invoke-virtual {v4, v7}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbike/smarthalo/app/models/SHLocation;

    .line 1156
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_3

    .line 1158
    invoke-static {v0, v8, v2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    int-to-long v5, v7

    move v12, v8

    .line 1160
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v5, v6, v8, v9}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v7, v7, 0x1

    move v6, v12

    goto :goto_2

    .line 1163
    :cond_4
    invoke-virtual {v1}, Lio/realm/internal/OsList;->removeAll()V

    if-eqz v4, :cond_6

    .line 1165
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLocation;

    .line 1166
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_5

    .line 1168
    invoke-static {v0, v5, v2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1170
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_4

    .line 1176
    :cond_6
    new-instance v1, Lio/realm/internal/OsList;

    invoke-virtual {v3, v10, v11}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    iget-wide v4, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-direct {v1, v3, v4, v5}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1177
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1178
    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Lio/realm/internal/OsList;->size()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_8

    .line 1180
    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_a

    .line 1182
    invoke-virtual {v3, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/models/SHLocation;

    .line 1183
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_7

    .line 1185
    invoke-static {v0, v6, v2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :cond_7
    int-to-long v8, v5

    .line 1187
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1190
    :cond_8
    invoke-virtual {v1}, Lio/realm/internal/OsList;->removeAll()V

    if-eqz v3, :cond_a

    .line 1192
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/models/SHLocation;

    .line 1193
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_9

    .line 1195
    invoke-static {v0, v4, v2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1197
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_6

    .line 1202
    :cond_a
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v17

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide v8, v10

    move-wide/from16 v19, v10

    move-wide/from16 v10, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1203
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v10

    move-wide/from16 v8, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1204
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1205
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1206
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1207
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1208
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1209
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1210
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1211
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1213
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1215
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_b

    .line 1217
    invoke-static {v0, v1, v2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1219
    :cond_b
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_7

    .line 1221
    :cond_c
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v19

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_7
    return-wide v19
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1227
    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1228
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 1230
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    .line 1232
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1233
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lbike/smarthalo/app/models/SHRide;

    .line 1234
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    instance-of v3, v11, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    move-object v3, v11

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1238
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1241
    :cond_1
    move-object v15, v11

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1244
    invoke-static {v12, v13, v9, v10}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 1246
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide v3, v12

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 1249
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v9, v10, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_2

    :cond_3
    move-wide v7, v3

    .line 1251
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    new-instance v3, Lio/realm/internal/OsList;

    invoke-virtual {v2, v7, v8}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1254
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1255
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v6

    int-to-long v5, v6

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v16

    cmp-long v18, v5, v16

    if-nez v18, :cond_6

    .line 1257
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    .line 1259
    invoke-virtual {v4, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lbike/smarthalo/app/models/SHLocation;

    .line 1260
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    if-nez v16, :cond_4

    .line 1262
    invoke-static {v0, v11, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-wide/from16 v18, v9

    goto :goto_4

    :cond_4
    move-wide/from16 v18, v9

    :goto_4
    int-to-long v9, v6

    move-wide/from16 v20, v12

    .line 1264
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v9, v10, v11, v12}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v9, v18

    move-wide/from16 v12, v20

    goto :goto_3

    :cond_5
    move-wide/from16 v18, v9

    move-wide/from16 v20, v12

    goto :goto_6

    :cond_6
    move-wide/from16 v18, v9

    move-wide/from16 v20, v12

    .line 1267
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    if-eqz v4, :cond_8

    .line 1269
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLocation;

    .line 1270
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_7

    .line 1272
    invoke-static {v0, v5, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1274
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_5

    .line 1280
    :cond_8
    :goto_6
    new-instance v3, Lio/realm/internal/OsList;

    invoke-virtual {v2, v7, v8}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-direct {v3, v4, v5, v6}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 1281
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1282
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v9

    cmp-long v11, v5, v9

    if-nez v11, :cond_a

    .line 1284
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_c

    .line 1286
    invoke-virtual {v4, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbike/smarthalo/app/models/SHLocation;

    .line 1287
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_9

    .line 1289
    invoke-static {v0, v9, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_9
    int-to-long v11, v6

    .line 1291
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v3, v11, v12, v9, v10}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1294
    :cond_a
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    if-eqz v4, :cond_c

    .line 1296
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/models/SHLocation;

    .line 1297
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_b

    .line 1299
    invoke-static {v0, v5, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1301
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_8

    .line 1306
    :cond_c
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide/from16 v3, v20

    move-wide v12, v7

    move-wide/from16 v16, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1307
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1308
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1309
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1310
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1311
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1312
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1313
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1314
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1315
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1317
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1319
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_d

    .line 1321
    invoke-static {v0, v3, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1323
    :cond_d
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide/from16 v3, v20

    move-wide v7, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_9

    .line 1325
    :cond_e
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    move-wide/from16 v3, v20

    move-wide v7, v12

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_9
    move-wide/from16 v9, v16

    move-wide/from16 v12, v20

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;
    .locals 7

    .line 861
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 862
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 863
    new-instance p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;-><init>()V

    .line 864
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHRide;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHRide;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHRide;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v7, p4

    .line 1398
    move-object/from16 v1, p2

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    .line 1399
    move-object/from16 v8, p3

    check-cast v8, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;

    .line 1400
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    move-object/from16 v9, p0

    invoke-virtual {v9, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1401
    new-instance v10, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxColumnIndexValue:J

    move-object/from16 v11, p5

    invoke-direct {v10, v1, v2, v3, v11}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 1402
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1404
    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    .line 1406
    new-instance v14, Lio/realm/RealmList;

    invoke-direct {v14}, Lio/realm/RealmList;-><init>()V

    const/4 v15, 0x0

    .line 1407
    :goto_0
    invoke-virtual {v12}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v15, v1, :cond_1

    .line 1408
    invoke-virtual {v12, v15}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 1409
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLocation;

    if-eqz v1, :cond_0

    .line 1411
    invoke-virtual {v14, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1413
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v1

    invoke-virtual {v14, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-virtual {v10, v1, v2, v14}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 1418
    :cond_2
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1421
    :goto_2
    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1423
    new-instance v14, Lio/realm/RealmList;

    invoke-direct {v14}, Lio/realm/RealmList;-><init>()V

    .line 1424
    :goto_3
    invoke-virtual {v12}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v13, v1, :cond_4

    .line 1425
    invoke-virtual {v12, v13}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 1426
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLocation;

    if-eqz v1, :cond_3

    .line 1428
    invoke-virtual {v14, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1430
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v1

    invoke-virtual {v14, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1433
    :cond_4
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-virtual {v10, v1, v2, v14}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_5

    .line 1435
    :cond_5
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1437
    :goto_5
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$avgSpeed()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1438
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$curSpeed()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1439
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$maxSpeed()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1440
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$climbedElevation()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1441
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$traveledDistance()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1442
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$burntCalories()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1443
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$co2()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1444
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$endTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1445
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$isActive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1446
    iget-wide v1, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1448
    invoke-interface {v8}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1450
    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v10, v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addNull(J)V

    goto :goto_6

    .line 1452
    :cond_6
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    if-eqz v1, :cond_7

    .line 1454
    iget-wide v2, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v10, v2, v3, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    goto :goto_6

    .line 1456
    :cond_7
    iget-wide v12, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;Lbike/smarthalo/app/models/FitnessIntegrations;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {v10, v12, v13, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    .line 1460
    :goto_6
    invoke-virtual {v10}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingObject()V

    return-object p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1552
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;

    .line 1554
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1555
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1556
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1558
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1559
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1560
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1562
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1537
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1538
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1539
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 1543
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 122
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 126
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    .line 127
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 128
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 129
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 130
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 131
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$avgSpeed()D
    .locals 3

    .line 280
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 281
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$burntCalories()D
    .locals 3

    .line 390
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 391
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$climbedElevation()D
    .locals 3

    .line 346
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 347
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$co2()D
    .locals 3

    .line 412
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 413
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$curSpeed()D
    .locals 3

    .line 302
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 303
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$endTime()J
    .locals 3

    .line 434
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 435
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;
    .locals 7

    .line 499
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 500
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/FitnessIntegrations;

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    return-object v0
.end method

.method public realmGet$goodLocations()Lio/realm/RealmList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 220
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->goodLocationsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 224
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    iget-object v3, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->goodLocationsRealmList:Lio/realm/RealmList;

    .line 225
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->goodLocationsRealmList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$hasStravaUploadRequest()Z
    .locals 3

    .line 478
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 479
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isActive()Z
    .locals 3

    .line 456
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 457
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$locations()Lio/realm/RealmList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 159
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->locationsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 163
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    iget-object v3, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->locationsRealmList:Lio/realm/RealmList;

    .line 164
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->locationsRealmList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$maxSpeed()D
    .locals 3

    .line 324
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 325
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 1532
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$timestamp()Ljava/lang/Long;
    .locals 3

    .line 137
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 138
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->timestampIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$traveledDistance()D
    .locals 3

    .line 368
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 369
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmSet$avgSpeed(D)V
    .locals 9

    .line 286
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 296
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->avgSpeedIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$burntCalories(D)V
    .locals 9

    .line 396
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 406
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->burntCaloriesIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$climbedElevation(D)V
    .locals 9

    .line 352
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 362
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->climbedElevationIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$co2(D)V
    .locals 9

    .line 418
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 428
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->co2Index:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$curSpeed(D)V
    .locals 9

    .line 308
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 318
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->curSpeedIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$endTime(J)V
    .locals 9

    .line 440
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 450
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->endTimeIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V
    .locals 10

    .line 508
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "fitnessIntegrations"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 515
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/FitnessIntegrations;

    .line 518
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 521
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, p1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 524
    :cond_3
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 525
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v3, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 529
    :cond_4
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_5

    .line 531
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 534
    :cond_5
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 535
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->fitnessIntegrationsIndex:J

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void
.end method

.method public realmSet$goodLocations(Lio/realm/RealmList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 232
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "goodLocations"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 239
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 240
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 242
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 243
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    if-eqz v3, :cond_3

    .line 244
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 253
    :cond_5
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 254
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->goodLocationsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 256
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 257
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 259
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 260
    iget-object v4, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 261
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 264
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    return-void

    .line 268
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 270
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 271
    iget-object v4, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 272
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/OsList;->addRow(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public realmSet$hasStravaUploadRequest(Z)V
    .locals 8

    .line 484
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 494
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isActive(Z)V
    .locals 8

    .line 462
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 472
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->isActiveIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$locations(Lio/realm/RealmList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "locations"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 179
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 181
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 182
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    if-eqz v3, :cond_3

    .line 183
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 186
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 192
    :cond_5
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 193
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->locationsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 195
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 196
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 198
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 199
    iget-object v4, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 200
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    return-void

    .line 207
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 209
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 210
    iget-object v4, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 211
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/OsList;->addRow(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public realmSet$maxSpeed(D)V
    .locals 9

    .line 330
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 340
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->maxSpeedIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$timestamp(Ljava/lang/Long;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 152
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'timestamp\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$traveledDistance(D)V
    .locals 9

    .line 374
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 384
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy$SHRideColumnInfo;->traveledDistanceIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1467
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 1470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHRide = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{timestamp:"

    .line 1471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{locations:"

    .line 1475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RealmList<SHLocation>["

    .line 1476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{goodLocations:"

    .line 1479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RealmList<SHLocation>["

    .line 1480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{avgSpeed:"

    .line 1483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$avgSpeed()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{curSpeed:"

    .line 1487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$curSpeed()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{maxSpeed:"

    .line 1491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$maxSpeed()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{climbedElevation:"

    .line 1495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$climbedElevation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{traveledDistance:"

    .line 1499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$traveledDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{burntCalories:"

    .line 1503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$burntCalories()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{co2:"

    .line 1507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$co2()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{endTime:"

    .line 1511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$endTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isActive:"

    .line 1515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{hasStravaUploadRequest:"

    .line 1519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$hasStravaUploadRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fitnessIntegrations:"

    .line 1523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHRideRealmProxy;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "FitnessIntegrations"

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
