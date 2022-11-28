.class public Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;
.super Lbike/smarthalo/app/models/SHPastRide;
.source "bike_smarthalo_app_models_SHPastRideRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lbike/smarthalo/app/models/SHPastRide;-><init>()V

    .line 124
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;Lbike/smarthalo/app/models/SHPastRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHPastRide;"
        }
    .end annotation

    .line 938
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 940
    check-cast v0, Lbike/smarthalo/app/models/SHPastRide;

    return-object v0

    .line 943
    :cond_0
    move-object v0, p2

    check-cast v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    .line 945
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p0, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 946
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v2, v1, v3, v4, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 949
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 950
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 951
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 952
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 953
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 954
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 955
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 956
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 957
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 958
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 959
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 960
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 961
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 962
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 963
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 964
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 968
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 969
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    move-result-object p1

    .line 970
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-interface {v0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    .line 975
    invoke-virtual {p1, p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto :goto_0

    .line 977
    :cond_1
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/FitnessIntegrations;

    if-eqz p2, :cond_2

    .line 979
    invoke-virtual {p1, p2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto :goto_0

    .line 981
    :cond_2
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p2, v0}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;Lbike/smarthalo/app/models/FitnessIntegrations;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    :goto_0
    return-object p1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;Lbike/smarthalo/app/models/SHPastRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHPastRide;"
        }
    .end annotation

    .line 900
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 901
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 902
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 905
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 903
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 909
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 910
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 912
    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 918
    const-class v2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 919
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    .line 920
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v0, 0x0

    move-object v3, v1

    goto :goto_0

    .line 925
    :cond_3
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

    .line 926
    new-instance v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;-><init>()V

    .line 927
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 930
    throw p0

    :cond_4
    move v0, p3

    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 934
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;Lbike/smarthalo/app/models/SHPastRide;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;Lbike/smarthalo/app/models/SHPastRide;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;
    .locals 1

    .line 581
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/SHPastRide;IILjava/util/Map;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHPastRide;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/SHPastRide;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1254
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v0, :cond_1

    .line 1257
    new-instance v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHPastRide;-><init>()V

    .line 1258
    new-instance v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v1, p1, v0}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1261
    :cond_1
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_2

    .line 1262
    iget-object p0, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/SHPastRide;

    return-object p0

    .line 1264
    :cond_2
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 1265
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v0, v1

    .line 1267
    :goto_0
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    .line 1268
    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    .line 1269
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$stamp(Ljava/lang/String;)V

    .line 1270
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$id(I)V

    .line 1271
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$start(Ljava/lang/String;)V

    .line 1272
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$end(Ljava/lang/String;)V

    .line 1273
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$distance(F)V

    .line 1274
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$averageSpeed(F)V

    .line 1275
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$elevation(F)V

    .line 1276
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$calories(F)V

    .line 1277
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$duration(I)V

    .line 1278
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$co2(F)V

    .line 1279
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$createdAt(Ljava/lang/String;)V

    .line 1280
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$updatedAt(Ljava/lang/String;)V

    .line 1281
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$user_id(I)V

    .line 1282
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasDeleteRequest(Z)V

    .line 1283
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasStravaUploadRequest(Z)V

    .line 1284
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasUpdateRequest(Z)V

    .line 1287
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createDetachedCopy(Lbike/smarthalo/app/models/FitnessIntegrations;IILjava/util/Map;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 555
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "SHPastRide"

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "stamp"

    .line 556
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "id"

    .line 557
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "start"

    .line 558
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "end"

    .line 559
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "distance"

    .line 560
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "averageSpeed"

    .line 561
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "elevation"

    .line 562
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "calories"

    .line 563
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "duration"

    .line 564
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "co2"

    .line 565
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "createdAt"

    .line 566
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "updatedAt"

    .line 567
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "user_id"

    .line 568
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "hasDeleteRequest"

    .line 569
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "hasStravaUploadRequest"

    .line 570
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "hasUpdateRequest"

    .line 571
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "fitnessIntegrations"

    .line 572
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v2, "FitnessIntegrations"

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 573
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHPastRide;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 598
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 599
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    check-cast v4, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 600
    iget-wide v4, v4, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    const-string v6, "stamp"

    .line 602
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_0

    const-string v6, "stamp"

    .line 603
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v7

    :goto_0
    cmp-long v6, v4, v7

    if-eqz v6, :cond_1

    .line 606
    sget-object v6, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v6}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/realm/BaseRealm$RealmObjectContext;

    .line 608
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v9

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v7, v6

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 609
    new-instance v3, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    invoke-direct {v3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-virtual {v6}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v6}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 612
    throw p0

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_5

    const-string v3, "fitnessIntegrations"

    .line 616
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "fitnessIntegrations"

    .line 617
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "stamp"

    .line 619
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "stamp"

    .line 620
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 621
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p0, v3, v2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    goto :goto_2

    .line 623
    :cond_3
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    const-string v4, "stamp"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    goto :goto_2

    .line 626
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'stamp\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 630
    :cond_5
    :goto_2
    move-object v0, v3

    check-cast v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    const-string v1, "id"

    .line 631
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "id"

    .line 632
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "id"

    .line 635
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$id(I)V

    goto :goto_3

    .line 633
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    const-string v1, "start"

    .line 638
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "start"

    .line 639
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 640
    invoke-interface {v0, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$start(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v1, "start"

    .line 642
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$start(Ljava/lang/String;)V

    :cond_9
    :goto_4
    const-string v1, "end"

    .line 645
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "end"

    .line 646
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 647
    invoke-interface {v0, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$end(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v1, "end"

    .line 649
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$end(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string v1, "distance"

    .line 652
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "distance"

    .line 653
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "distance"

    .line 656
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$distance(F)V

    goto :goto_6

    .line 654
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'distance\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_6
    const-string v1, "averageSpeed"

    .line 659
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "averageSpeed"

    .line 660
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "averageSpeed"

    .line 663
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$averageSpeed(F)V

    goto :goto_7

    .line 661
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'averageSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_7
    const-string v1, "elevation"

    .line 666
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "elevation"

    .line 667
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "elevation"

    .line 670
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$elevation(F)V

    goto :goto_8

    .line 668
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'elevation\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_8
    const-string v1, "calories"

    .line 673
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "calories"

    .line 674
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "calories"

    .line 677
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$calories(F)V

    goto :goto_9

    .line 675
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'calories\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_9
    const-string v1, "duration"

    .line 680
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "duration"

    .line 681
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "duration"

    .line 684
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$duration(I)V

    goto :goto_a

    .line 682
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'duration\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_a
    const-string v1, "co2"

    .line 687
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "co2"

    .line 688
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "co2"

    .line 691
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$co2(F)V

    goto :goto_b

    .line 689
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'co2\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_b
    const-string v1, "createdAt"

    .line 694
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "createdAt"

    .line 695
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 696
    invoke-interface {v0, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$createdAt(Ljava/lang/String;)V

    goto :goto_c

    :cond_18
    const-string v1, "createdAt"

    .line 698
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$createdAt(Ljava/lang/String;)V

    :cond_19
    :goto_c
    const-string v1, "updatedAt"

    .line 701
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "updatedAt"

    .line 702
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 703
    invoke-interface {v0, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$updatedAt(Ljava/lang/String;)V

    goto :goto_d

    :cond_1a
    const-string v1, "updatedAt"

    .line 705
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$updatedAt(Ljava/lang/String;)V

    :cond_1b
    :goto_d
    const-string v1, "user_id"

    .line 708
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "user_id"

    .line 709
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "user_id"

    .line 712
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$user_id(I)V

    goto :goto_e

    .line 710
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'user_id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_e
    const-string v1, "hasDeleteRequest"

    .line 715
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "hasDeleteRequest"

    .line 716
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "hasDeleteRequest"

    .line 719
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasDeleteRequest(Z)V

    goto :goto_f

    .line 717
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasDeleteRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_f
    const-string v1, "hasStravaUploadRequest"

    .line 722
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "hasStravaUploadRequest"

    .line 723
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "hasStravaUploadRequest"

    .line 726
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasStravaUploadRequest(Z)V

    goto :goto_10

    .line 724
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasStravaUploadRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_10
    const-string v1, "hasUpdateRequest"

    .line 729
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "hasUpdateRequest"

    .line 730
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "hasUpdateRequest"

    .line 733
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasUpdateRequest(Z)V

    goto :goto_11

    .line 731
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasUpdateRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_11
    const-string v1, "fitnessIntegrations"

    .line 736
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "fitnessIntegrations"

    .line 737
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 738
    invoke-interface {v0, v2}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto :goto_12

    :cond_24
    const-string v1, "fitnessIntegrations"

    .line 740
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    .line 741
    invoke-interface {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    :cond_25
    :goto_12
    return-object v3
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    new-instance v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHPastRide;-><init>()V

    .line 753
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    .line 754
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 755
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 756
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stamp"

    .line 758
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 759
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 760
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$stamp(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 763
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$stamp(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "id"

    .line 766
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 767
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 768
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$id(I)V

    goto :goto_0

    .line 770
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 771
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v5, "start"

    .line 773
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 774
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 775
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$start(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 778
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$start(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "end"

    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 781
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_6

    .line 782
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 785
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$end(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "distance"

    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 788
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 789
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$distance(F)V

    goto/16 :goto_0

    .line 791
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 792
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'distance\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "averageSpeed"

    .line 794
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 795
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 796
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$averageSpeed(F)V

    goto/16 :goto_0

    .line 798
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 799
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'averageSpeed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string v5, "elevation"

    .line 801
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 802
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_c

    .line 803
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$elevation(F)V

    goto/16 :goto_0

    .line 805
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 806
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'elevation\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string v5, "calories"

    .line 808
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 809
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_e

    .line 810
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$calories(F)V

    goto/16 :goto_0

    .line 812
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 813
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'calories\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    const-string v5, "duration"

    .line 815
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 816
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_10

    .line 817
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$duration(I)V

    goto/16 :goto_0

    .line 819
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 820
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'duration\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v5, "co2"

    .line 822
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 823
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_12

    .line 824
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$co2(F)V

    goto/16 :goto_0

    .line 826
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 827
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'co2\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-string v5, "createdAt"

    .line 829
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 830
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_14

    .line 831
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$createdAt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 833
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 834
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$createdAt(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v5, "updatedAt"

    .line 836
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 837
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_16

    .line 838
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$updatedAt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 841
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$updatedAt(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v5, "user_id"

    .line 843
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 844
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_18

    .line 845
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$user_id(I)V

    goto/16 :goto_0

    .line 847
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 848
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'user_id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const-string v5, "hasDeleteRequest"

    .line 850
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 851
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1a

    .line 852
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasDeleteRequest(Z)V

    goto/16 :goto_0

    .line 854
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 855
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasDeleteRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const-string v5, "hasStravaUploadRequest"

    .line 857
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 858
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1c

    .line 859
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasStravaUploadRequest(Z)V

    goto/16 :goto_0

    .line 861
    :cond_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 862
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasStravaUploadRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    const-string v5, "hasUpdateRequest"

    .line 864
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 865
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1e

    .line 866
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$hasUpdateRequest(Z)V

    goto/16 :goto_0

    .line 868
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 869
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasUpdateRequest\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    const-string v5, "fitnessIntegrations"

    .line 871
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 872
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_20

    .line 873
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 874
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto/16 :goto_0

    .line 876
    :cond_20
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v4

    .line 877
    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    goto/16 :goto_0

    .line 880
    :cond_21
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 883
    :cond_22
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_23

    .line 887
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHPastRide;

    return-object p0

    .line 885
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'stamp\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 577
    sget-object v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHPastRide"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;)J
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHPastRide;",
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
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 993
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 994
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 995
    iget-wide v4, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    .line 997
    move-object/from16 v16, v1

    check-cast v16, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_1

    .line 999
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-static {v13, v14, v4, v5, v9}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-wide v9, v7

    :goto_0
    cmp-long v11, v9, v7

    if-nez v11, :cond_2

    .line 1002
    invoke-static {v3, v4, v5, v6}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_1

    .line 1004
    :cond_2
    invoke-static {v6}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v17, v9

    .line 1006
    :goto_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v1

    int-to-long v10, v1

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1008
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1010
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1012
    :cond_3
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1014
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1016
    :cond_4
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1017
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1018
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1019
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1020
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v1

    int-to-long v10, v1

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1021
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1022
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1024
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1026
    :cond_5
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1028
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1030
    :cond_6
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v1

    int-to-long v10, v1

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1031
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1032
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1033
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1035
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1037
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_7

    .line 1039
    invoke-static {v0, v1, v2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1041
    :cond_7
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    :cond_8
    return-wide v17
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
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

    .line 1047
    const-class v2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1048
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 1050
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    .line 1052
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1053
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHPastRide;

    .line 1054
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1058
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1062
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    .line 1064
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v7}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v11, v7, v5

    if-nez v11, :cond_3

    .line 1067
    invoke-static {v2, v9, v10, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    .line 1069
    :cond_3
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v7

    .line 1071
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v7, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v18, v7

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1073
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1075
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1077
    :cond_4
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1079
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1081
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1082
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1083
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1084
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1085
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1086
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1087
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1089
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1091
    :cond_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1093
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1095
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1096
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1097
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1098
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1100
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1102
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_8

    .line 1104
    invoke-static {v0, v3, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insert(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1106
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    :cond_9
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;)J
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1112
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

    .line 1113
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 1115
    :cond_0
    const-class v3, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1116
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 1118
    iget-wide v4, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    .line 1120
    move-object/from16 v16, v1

    check-cast v16, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_1

    .line 1122
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-static {v13, v14, v4, v5, v9}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-wide v9, v7

    :goto_0
    cmp-long v11, v9, v7

    if-nez v11, :cond_2

    .line 1125
    invoke-static {v3, v4, v5, v6}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_1

    :cond_2
    move-wide/from16 v17, v9

    .line 1127
    :goto_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v1

    int-to-long v10, v1

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1129
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1131
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 1133
    :cond_3
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1135
    :goto_2
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1137
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 1139
    :cond_4
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1141
    :goto_3
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1142
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1143
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1144
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1145
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v1

    int-to-long v10, v1

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1146
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1147
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1149
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 1151
    :cond_5
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1153
    :goto_4
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1155
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 1157
    :cond_6
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const/4 v10, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1159
    :goto_5
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v1

    int-to-long v10, v1

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1160
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1161
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1162
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result v10

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1164
    invoke-interface/range {v16 .. v16}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1166
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_7

    .line 1168
    invoke-static {v0, v1, v2}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1170
    :cond_7
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_6

    .line 1172
    :cond_8
    iget-wide v6, v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_6
    return-wide v17
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

    .line 1178
    const-class v2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1179
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 1181
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    .line 1183
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1184
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHPastRide;

    .line 1185
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1188
    :cond_0
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1189
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1193
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    .line 1195
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v7}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v11, v7, v5

    if-nez v11, :cond_3

    .line 1198
    invoke-static {v2, v9, v10, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v7

    .line 1200
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v7, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v18, v7

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1202
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1204
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 1206
    :cond_4
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1208
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1210
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 1212
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1214
    :goto_4
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1215
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1216
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1217
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1218
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1219
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1220
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1222
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 1224
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1226
    :goto_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1228
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 1230
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1232
    :goto_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1233
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1234
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1235
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1237
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1239
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_8

    .line 1241
    invoke-static {v0, v3, v1}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/FitnessIntegrations;Ljava/util/Map;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1243
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_7

    .line 1245
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_7
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;
    .locals 7

    .line 892
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 893
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 894
    new-instance p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;-><init>()V

    .line 895
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;Lbike/smarthalo/app/models/SHPastRide;Lbike/smarthalo/app/models/SHPastRide;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHPastRide;"
        }
    .end annotation

    .line 1293
    move-object v0, p2

    check-cast v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    .line 1294
    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;

    .line 1295
    const-class v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1296
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 1297
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$stamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1298
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1299
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$start()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1300
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$end()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1301
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$distance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1302
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$averageSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1303
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$elevation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1304
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$calories()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1305
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$duration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1306
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$co2()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1307
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1308
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1309
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$user_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1310
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasDeleteRequest()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1311
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasStravaUploadRequest()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1312
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$hasUpdateRequest()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1314
    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1316
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v1, p0, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addNull(J)V

    goto :goto_0

    .line 1318
    :cond_0
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbike/smarthalo/app/models/FitnessIntegrations;

    if-eqz p3, :cond_1

    .line 1320
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    goto :goto_0

    .line 1322
    :cond_1
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    const-class p3, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p1, p3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;

    const/4 v7, 0x1

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_FitnessIntegrationsRealmProxy$FitnessIntegrationsColumnInfo;Lbike/smarthalo/app/models/FitnessIntegrations;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    .line 1326
    :goto_0
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingObject()V

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

    .line 1429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1430
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;

    .line 1432
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1433
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1436
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1437
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1438
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1440
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1415
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1417
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1420
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

    .line 1421
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

    .line 129
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 133
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    .line 134
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 135
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 136
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 137
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 138
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$averageSpeed()F
    .locals 3

    .line 262
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 263
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$calories()F
    .locals 3

    .line 306
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 307
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$co2()F
    .locals 3

    .line 350
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 351
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$createdAt()Ljava/lang/String;
    .locals 3

    .line 372
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 373
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$distance()F
    .locals 3

    .line 240
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 241
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$duration()I
    .locals 3

    .line 328
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 329
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$elevation()F
    .locals 3

    .line 284
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 285
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$end()Ljava/lang/String;
    .locals 3

    .line 212
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 213
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;
    .locals 7

    .line 515
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 516
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/FitnessIntegrations;

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

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

.method public realmGet$hasDeleteRequest()Z
    .locals 3

    .line 450
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 451
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$hasStravaUploadRequest()Z
    .locals 3

    .line 472
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 473
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$hasUpdateRequest()Z
    .locals 3

    .line 494
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 495
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$id()I
    .locals 3

    .line 162
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 163
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
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

    .line 1410
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$stamp()Ljava/lang/String;
    .locals 3

    .line 144
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 145
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->stampIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$start()Ljava/lang/String;
    .locals 3

    .line 184
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 185
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/lang/String;
    .locals 3

    .line 400
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 401
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$user_id()I
    .locals 3

    .line 428
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 429
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$averageSpeed(F)V
    .locals 8

    .line 268
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 278
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->averageSpeedIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$calories(F)V
    .locals 8

    .line 312
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 322
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->caloriesIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$co2(F)V
    .locals 8

    .line 356
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 366
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->co2Index:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$createdAt(Ljava/lang/String;)V
    .locals 8

    .line 378
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 386
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 384
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 394
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 392
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$distance(F)V
    .locals 8

    .line 246
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 256
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->distanceIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$duration(I)V
    .locals 9

    .line 334
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 344
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->durationIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$elevation(F)V
    .locals 8

    .line 290
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 300
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->elevationIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$end(Ljava/lang/String;)V
    .locals 8

    .line 218
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 226
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 224
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'end\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 234
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->endIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 232
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'end\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V
    .locals 10

    .line 524
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "fitnessIntegrations"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 531
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/FitnessIntegrations;

    .line 534
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 537
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, p1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 540
    :cond_3
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 541
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v3, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

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

    .line 545
    :cond_4
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_5

    .line 547
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 550
    :cond_5
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 551
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->fitnessIntegrationsIndex:J

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

.method public realmSet$hasDeleteRequest(Z)V
    .locals 8

    .line 456
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 466
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasDeleteRequestIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$hasStravaUploadRequest(Z)V
    .locals 8

    .line 478
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 483
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 488
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasStravaUploadRequestIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$hasUpdateRequest(Z)V
    .locals 8

    .line 500
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 510
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->hasUpdateRequestIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$id(I)V
    .locals 9

    .line 168
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 178
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$stamp(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 156
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'stamp\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$start(Ljava/lang/String;)V
    .locals 8

    .line 190
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 196
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'start\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 206
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->startIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 204
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'start\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$updatedAt(Ljava/lang/String;)V
    .locals 8

    .line 406
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 414
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 422
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 420
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$user_id(I)V
    .locals 9

    .line 434
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 444
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy$SHPastRideColumnInfo;->user_idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1333
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 1336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHPastRide = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{stamp:"

    .line 1337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$stamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{id:"

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{start:"

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$start()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{end:"

    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$end()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{distance:"

    .line 1353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$distance()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{averageSpeed:"

    .line 1357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$averageSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{elevation:"

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$elevation()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{calories:"

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$calories()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{duration:"

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$duration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{co2:"

    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$co2()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{createdAt:"

    .line 1377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{updatedAt:"

    .line 1381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{user_id:"

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$user_id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{hasDeleteRequest:"

    .line 1389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$hasDeleteRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{hasStravaUploadRequest:"

    .line 1393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$hasStravaUploadRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{hasUpdateRequest:"

    .line 1397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$hasUpdateRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fitnessIntegrations:"

    .line 1401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxy;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "FitnessIntegrations"

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
