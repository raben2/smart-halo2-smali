.class public Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;
.super Lbike/smarthalo/app/models/SHUser;
.source "bike_smarthalo_app_models_SHUserRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lbike/smarthalo/app/models/SHUser;-><init>()V

    .line 130
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;Lbike/smarthalo/app/models/SHUser;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;",
            "Lbike/smarthalo/app/models/SHUser;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHUser;"
        }
    .end annotation

    .line 1145
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 1147
    check-cast p3, Lbike/smarthalo/app/models/SHUser;

    return-object p3

    .line 1150
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    .line 1152
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1153
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 1156
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1157
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1158
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1159
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1160
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1161
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1162
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1163
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1164
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1165
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1166
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1167
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1168
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1169
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1170
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1171
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1172
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1173
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1174
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1178
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 1179
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    move-result-object p0

    .line 1180
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;Lbike/smarthalo/app/models/SHUser;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHUser;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;",
            "Lbike/smarthalo/app/models/SHUser;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHUser;"
        }
    .end annotation

    .line 1107
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1108
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 1109
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1112
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 1110
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1116
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1117
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 1119
    check-cast v1, Lbike/smarthalo/app/models/SHUser;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 1125
    const-class v2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1126
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    .line 1127
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v0, 0x0

    move-object v3, v1

    goto :goto_0

    .line 1132
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

    .line 1133
    new-instance v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;-><init>()V

    .line 1134
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 1137
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

    .line 1141
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;Lbike/smarthalo/app/models/SHUser;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHUser;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;Lbike/smarthalo/app/models/SHUser;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHUser;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;
    .locals 1

    .line 755
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/SHUser;IILjava/util/Map;)Lbike/smarthalo/app/models/SHUser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHUser;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/SHUser;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1647
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 1650
    new-instance p2, Lbike/smarthalo/app/models/SHUser;

    invoke-direct {p2}, Lbike/smarthalo/app/models/SHUser;-><init>()V

    .line 1651
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1654
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 1655
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/SHUser;

    return-object p0

    .line 1657
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lbike/smarthalo/app/models/SHUser;

    .line 1658
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 1660
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    .line 1661
    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    .line 1662
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$key(Ljava/lang/String;)V

    .line 1663
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    .line 1664
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    .line 1665
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    .line 1666
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$email(Ljava/lang/String;)V

    .line 1667
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$gender(Ljava/lang/Integer;)V

    .line 1668
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    .line 1669
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$height(Ljava/lang/Double;)V

    .line 1670
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    .line 1671
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weight(Ljava/lang/Double;)V

    .line 1672
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    .line 1673
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    .line 1674
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$picture(Ljava/lang/String;)V

    .line 1675
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$authLevel(Ljava/lang/String;)V

    .line 1676
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceModel(Ljava/lang/String;)V

    .line 1677
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    .line 1678
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$devicePass(Ljava/lang/String;)V

    .line 1679
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$language(Ljava/lang/String;)V

    .line 1680
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$isConfirmed(Ljava/lang/Boolean;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 727
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "SHUser"

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "key"

    .line 728
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "id"

    .line 729
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "firstName"

    .line 730
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "lastName"

    .line 731
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "email"

    .line 732
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "gender"

    .line 733
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "dateOfBirth"

    .line 734
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "height"

    .line 735
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "heightMetric"

    .line 736
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "weight"

    .line 737
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "weightMetric"

    .line 738
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "distanceMetric"

    .line 739
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "picture"

    .line 740
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "authLevel"

    .line 741
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "deviceModel"

    .line 742
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "deviceId"

    .line 743
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "devicePass"

    .line 744
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "language"

    .line 745
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isConfirmed"

    .line 746
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 747
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHUser;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 772
    const-class p2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 773
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 774
    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    const-string v4, "key"

    .line 776
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    const-string v4, "key"

    .line 777
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v3, v4}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v5

    :goto_0
    cmp-long v4, v2, v5

    if-eqz v4, :cond_1

    .line 780
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/BaseRealm$RealmObjectContext;

    .line 782
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p2, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 783
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 786
    throw p0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    const-string p2, "key"

    .line 790
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "key"

    .line 791
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 792
    const-class p2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p0, p2, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    goto :goto_2

    .line 794
    :cond_2
    const-class p2, Lbike/smarthalo/app/models/SHUser;

    const-string v3, "key"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    goto :goto_2

    .line 797
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'key\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 801
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    const-string v0, "id"

    .line 802
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "id"

    .line 803
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 804
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_5
    const-string v0, "id"

    .line 806
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    :cond_6
    :goto_3
    const-string v0, "firstName"

    .line 809
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "firstName"

    .line 810
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "firstName"

    .line 813
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "lastName"

    .line 816
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "lastName"

    .line 817
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 818
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v0, "lastName"

    .line 820
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v0, "email"

    .line 823
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "email"

    .line 824
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 825
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$email(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v0, "email"

    .line 827
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$email(Ljava/lang/String;)V

    :cond_c
    :goto_6
    const-string v0, "gender"

    .line 830
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "gender"

    .line 831
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 832
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$gender(Ljava/lang/Integer;)V

    goto :goto_7

    :cond_d
    const-string v0, "gender"

    .line 834
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$gender(Ljava/lang/Integer;)V

    :cond_e
    :goto_7
    const-string v0, "dateOfBirth"

    .line 837
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dateOfBirth"

    .line 838
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 839
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    goto :goto_8

    :cond_f
    const-string v0, "dateOfBirth"

    .line 841
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 843
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    goto :goto_8

    .line 845
    :cond_10
    new-instance v0, Ljava/util/Date;

    const-string v2, "dateOfBirth"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    :cond_11
    :goto_8
    const-string v0, "height"

    .line 849
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "height"

    .line 850
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 851
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$height(Ljava/lang/Double;)V

    goto :goto_9

    :cond_12
    const-string v0, "height"

    .line 853
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$height(Ljava/lang/Double;)V

    :cond_13
    :goto_9
    const-string v0, "heightMetric"

    .line 856
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "heightMetric"

    .line 857
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 858
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    goto :goto_a

    :cond_14
    const-string v0, "heightMetric"

    .line 860
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    :cond_15
    :goto_a
    const-string v0, "weight"

    .line 863
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "weight"

    .line 864
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 865
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weight(Ljava/lang/Double;)V

    goto :goto_b

    :cond_16
    const-string v0, "weight"

    .line 867
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weight(Ljava/lang/Double;)V

    :cond_17
    :goto_b
    const-string v0, "weightMetric"

    .line 870
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "weightMetric"

    .line 871
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 872
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    goto :goto_c

    :cond_18
    const-string v0, "weightMetric"

    .line 874
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    :cond_19
    :goto_c
    const-string v0, "distanceMetric"

    .line 877
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "distanceMetric"

    .line 878
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 879
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    goto :goto_d

    :cond_1a
    const-string v0, "distanceMetric"

    .line 881
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    :cond_1b
    :goto_d
    const-string v0, "picture"

    .line 884
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "picture"

    .line 885
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 886
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$picture(Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    const-string v0, "picture"

    .line 888
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$picture(Ljava/lang/String;)V

    :cond_1d
    :goto_e
    const-string v0, "authLevel"

    .line 891
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "authLevel"

    .line 892
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 893
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$authLevel(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    const-string v0, "authLevel"

    .line 895
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$authLevel(Ljava/lang/String;)V

    :cond_1f
    :goto_f
    const-string v0, "deviceModel"

    .line 898
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "deviceModel"

    .line 899
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 900
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceModel(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    const-string v0, "deviceModel"

    .line 902
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceModel(Ljava/lang/String;)V

    :cond_21
    :goto_10
    const-string v0, "deviceId"

    .line 905
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "deviceId"

    .line 906
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 907
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    goto :goto_11

    :cond_22
    const-string v0, "deviceId"

    .line 909
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    :cond_23
    :goto_11
    const-string v0, "devicePass"

    .line 912
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "devicePass"

    .line 913
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 914
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$devicePass(Ljava/lang/String;)V

    goto :goto_12

    :cond_24
    const-string v0, "devicePass"

    .line 916
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$devicePass(Ljava/lang/String;)V

    :cond_25
    :goto_12
    const-string v0, "language"

    .line 919
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "language"

    .line 920
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 921
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$language(Ljava/lang/String;)V

    goto :goto_13

    :cond_26
    const-string v0, "language"

    .line 923
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$language(Ljava/lang/String;)V

    :cond_27
    :goto_13
    const-string v0, "isConfirmed"

    .line 926
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "isConfirmed"

    .line 927
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 928
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$isConfirmed(Ljava/lang/Boolean;)V

    goto :goto_14

    :cond_28
    const-string v0, "isConfirmed"

    .line 930
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$isConfirmed(Ljava/lang/Boolean;)V

    :cond_29
    :goto_14
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHUser;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    new-instance v0, Lbike/smarthalo/app/models/SHUser;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHUser;-><init>()V

    .line 942
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    .line 943
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 944
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 945
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    .line 947
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 948
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1

    .line 949
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$key(Ljava/lang/String;)V

    goto :goto_1

    .line 951
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 952
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$key(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "id"

    .line 955
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 956
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_3

    .line 957
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    goto :goto_0

    .line 959
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 960
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const-string v5, "firstName"

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 963
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_5

    .line 964
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 967
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v5, "lastName"

    .line 969
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 970
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_7

    .line 971
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 974
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "email"

    .line 976
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 977
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_9

    .line 978
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$email(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 980
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 981
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$email(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "gender"

    .line 983
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 984
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_b

    .line 985
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$gender(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 987
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 988
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$gender(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "dateOfBirth"

    .line 990
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 991
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_d

    .line 992
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 993
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 994
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_e

    .line 995
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 997
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1000
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$dateOfBirth(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_f
    const-string v5, "height"

    .line 1002
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1003
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_10

    .line 1004
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$height(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 1006
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1007
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$height(Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_11
    const-string v5, "heightMetric"

    .line 1009
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1010
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_12

    .line 1011
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1013
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1014
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_13
    const-string v5, "weight"

    .line 1016
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1017
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_14

    .line 1018
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weight(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 1020
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1021
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weight(Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_15
    const-string v5, "weightMetric"

    .line 1023
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1024
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_16

    .line 1025
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1027
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1028
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_17
    const-string v5, "distanceMetric"

    .line 1030
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1031
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_18

    .line 1032
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1034
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1035
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_19
    const-string v5, "picture"

    .line 1037
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1038
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1a

    .line 1039
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$picture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1041
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1042
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$picture(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v5, "authLevel"

    .line 1044
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1045
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1c

    .line 1046
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$authLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1048
    :cond_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1049
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$authLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const-string v5, "deviceModel"

    .line 1051
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1052
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1e

    .line 1053
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceModel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1055
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1056
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceModel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string v5, "deviceId"

    .line 1058
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1059
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_20

    .line 1060
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1062
    :cond_20
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1063
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$deviceId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const-string v5, "devicePass"

    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1066
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_22

    .line 1067
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$devicePass(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1069
    :cond_22
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1070
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$devicePass(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    const-string v5, "language"

    .line 1072
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1073
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_24

    .line 1074
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$language(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1076
    :cond_24
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1077
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$language(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const-string v5, "isConfirmed"

    .line 1079
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1080
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_26

    .line 1081
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$isConfirmed(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1083
    :cond_26
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 1084
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmSet$isConfirmed(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1087
    :cond_27
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 1090
    :cond_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_29

    .line 1094
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHUser;

    return-object p0

    .line 1092
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'key\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 751
    sget-object v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHUser"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHUser;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1186
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 1189
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 1192
    iget-wide v2, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    .line 1194
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 1196
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v11, v12, v2, v3, v7}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    cmp-long v9, v7, v5

    if-nez v9, :cond_2

    .line 1199
    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    .line 1201
    :cond_2
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v15, v7

    .line 1203
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1206
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1208
    :cond_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1210
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1212
    :cond_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1214
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1216
    :cond_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1218
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1220
    :cond_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1222
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1224
    :cond_7
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1226
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 1228
    :cond_8
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1230
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1232
    :cond_9
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1234
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1236
    :cond_a
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1238
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1240
    :cond_b
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1242
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1244
    :cond_c
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1246
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1248
    :cond_d
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 1250
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1252
    :cond_e
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1254
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1256
    :cond_f
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 1258
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1260
    :cond_10
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 1262
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1264
    :cond_11
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 1266
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1268
    :cond_12
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 1270
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1272
    :cond_13
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1274
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    :cond_14
    return-wide v15
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

    move-object/from16 v0, p2

    .line 1280
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1281
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 1283
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    .line 1285
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1286
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHUser;

    .line 1287
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1290
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

    .line 1291
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1295
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    .line 1297
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

    .line 1300
    invoke-static {v1, v9, v10, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    .line 1302
    :cond_3
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v7

    .line 1304
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1307
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v9

    .line 1309
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1311
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1313
    :cond_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1315
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1317
    :cond_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1319
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1321
    :cond_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1323
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 1325
    :cond_8
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1327
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 1329
    :cond_9
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1331
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1333
    :cond_a
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1335
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1337
    :cond_b
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1339
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 1341
    :cond_c
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1343
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1345
    :cond_d
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1347
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1349
    :cond_e
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 1351
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1353
    :cond_f
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 1355
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1357
    :cond_10
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 1359
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1361
    :cond_11
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 1363
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1365
    :cond_12
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1367
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1369
    :cond_13
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 1371
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 1373
    :cond_14
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1375
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    :cond_15
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHUser;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1381
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1382
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 1384
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1385
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 1387
    iget-wide v2, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    .line 1389
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 1391
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v11, v12, v2, v3, v7}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    cmp-long v9, v7, v5

    if-nez v9, :cond_2

    .line 1394
    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    :cond_2
    move-wide v15, v7

    .line 1396
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1399
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_2

    .line 1401
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1403
    :goto_2
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1405
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 1407
    :cond_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1409
    :goto_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1411
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 1413
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1415
    :goto_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1417
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 1419
    :cond_6
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1421
    :goto_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1423
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_6

    .line 1425
    :cond_7
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1427
    :goto_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1429
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_7

    .line 1431
    :cond_8
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1433
    :goto_7
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1435
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_8

    .line 1437
    :cond_9
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1439
    :goto_8
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1441
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_9

    .line 1443
    :cond_a
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1445
    :goto_9
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1447
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_a

    .line 1449
    :cond_b
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1451
    :goto_a
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1453
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_b

    .line 1455
    :cond_c
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1457
    :goto_b
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1459
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_c

    .line 1461
    :cond_d
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1463
    :goto_c
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 1465
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 1467
    :cond_e
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1469
    :goto_d
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1471
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 1473
    :cond_f
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1475
    :goto_e
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 1477
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    .line 1479
    :cond_10
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1481
    :goto_f
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 1483
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_10

    .line 1485
    :cond_11
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1487
    :goto_10
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 1489
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11

    .line 1491
    :cond_12
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1493
    :goto_11
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 1495
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_12

    .line 1497
    :cond_13
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1499
    :goto_12
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1501
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_13

    .line 1503
    :cond_14
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_13
    return-wide v15
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

    move-object/from16 v0, p2

    .line 1509
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1510
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 1512
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    .line 1514
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1515
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHUser;

    .line 1516
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1519
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

    .line 1520
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1524
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    .line 1526
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

    .line 1529
    invoke-static {v1, v9, v10, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v7

    .line 1531
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1534
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v9

    .line 1536
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1538
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1540
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 1542
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1544
    :goto_4
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1546
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 1548
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1550
    :goto_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1552
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 1554
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1556
    :goto_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1558
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_7

    .line 1560
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1562
    :goto_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1564
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_8

    .line 1566
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1568
    :goto_8
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1570
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_9

    .line 1572
    :cond_a
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1574
    :goto_9
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1576
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_a

    .line 1578
    :cond_b
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1580
    :goto_a
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1582
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_b

    .line 1584
    :cond_c
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1586
    :goto_b
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1588
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_c

    .line 1590
    :cond_d
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1592
    :goto_c
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1594
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_d

    .line 1596
    :cond_e
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1598
    :goto_d
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 1600
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 1602
    :cond_f
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1604
    :goto_e
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 1606
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    .line 1608
    :cond_10
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1610
    :goto_f
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 1612
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_10

    .line 1614
    :cond_11
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1616
    :goto_10
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 1618
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11

    .line 1620
    :cond_12
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1622
    :goto_11
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1624
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_12

    .line 1626
    :cond_13
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1628
    :goto_12
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 1630
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_13

    .line 1632
    :cond_14
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1634
    :goto_13
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1636
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_14

    .line 1638
    :cond_15
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_14
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;
    .locals 7

    .line 1099
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1100
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 1101
    new-instance p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;-><init>()V

    .line 1102
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;Lbike/smarthalo/app/models/SHUser;Lbike/smarthalo/app/models/SHUser;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHUser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;",
            "Lbike/smarthalo/app/models/SHUser;",
            "Lbike/smarthalo/app/models/SHUser;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHUser;"
        }
    .end annotation

    .line 1686
    move-object p4, p2

    check-cast p4, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    .line 1687
    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;

    .line 1688
    const-class p4, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 1689
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->maxColumnIndexValue:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 1690
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1691
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1692
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1693
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1694
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$email()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1695
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$gender()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1696
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1697
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$height()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1698
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1699
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weight()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1700
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1701
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1702
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$picture()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1703
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$authLevel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1704
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1705
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1706
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$devicePass()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1707
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$language()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1708
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1710
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingObject()V

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

    .line 1821
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1822
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;

    .line 1824
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1825
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1826
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1828
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1829
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1830
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1832
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1807
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1808
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1809
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1812
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

    .line 1813
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

    .line 135
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 139
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    .line 140
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 141
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 142
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 143
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 144
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$authLevel()Ljava/lang/String;
    .locals 3

    .line 546
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 547
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$dateOfBirth()Ljava/util/Date;
    .locals 3

    .line 318
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 319
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$deviceId()Ljava/lang/String;
    .locals 3

    .line 606
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 607
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$deviceModel()Ljava/lang/String;
    .locals 3

    .line 576
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 577
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$devicePass()Ljava/lang/String;
    .locals 3

    .line 636
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 637
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$distanceMetric()Ljava/lang/Boolean;
    .locals 3

    .line 483
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 484
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$email()Ljava/lang/String;
    .locals 3

    .line 257
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 258
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$firstName()Ljava/lang/String;
    .locals 3

    .line 201
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 202
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$gender()Ljava/lang/Integer;
    .locals 3

    .line 285
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 286
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$height()Ljava/lang/Double;
    .locals 3

    .line 351
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 352
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$heightMetric()Ljava/lang/Boolean;
    .locals 3

    .line 384
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 385
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/Integer;
    .locals 3

    .line 168
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 169
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isConfirmed()Ljava/lang/Boolean;
    .locals 3

    .line 696
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 697
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 700
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$key()Ljava/lang/String;
    .locals 3

    .line 150
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 151
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->keyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$language()Ljava/lang/String;
    .locals 3

    .line 666
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 667
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lastName()Ljava/lang/String;
    .locals 3

    .line 229
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 230
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$picture()Ljava/lang/String;
    .locals 3

    .line 516
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 517
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1802
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$weight()Ljava/lang/Double;
    .locals 3

    .line 417
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 418
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$weightMetric()Ljava/lang/Boolean;
    .locals 3

    .line 450
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 451
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$authLevel(Ljava/lang/String;)V
    .locals 14

    .line 552
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 558
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 561
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 565
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 567
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 570
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->authLevelIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$dateOfBirth(Ljava/util/Date;)V
    .locals 14

    .line 327
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 333
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 336
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    .line 340
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 342
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 345
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->dateOfBirthIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$deviceId(Ljava/lang/String;)V
    .locals 14

    .line 612
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 618
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 621
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 625
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 627
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 630
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$deviceModel(Ljava/lang/String;)V
    .locals 14

    .line 582
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 588
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 591
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 595
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 597
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 600
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->deviceModelIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$devicePass(Ljava/lang/String;)V
    .locals 14

    .line 642
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 648
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 651
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 655
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 657
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 660
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->devicePassIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$distanceMetric(Ljava/lang/Boolean;)V
    .locals 14

    .line 492
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 498
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 501
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 505
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 507
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 510
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->distanceMetricIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$email(Ljava/lang/String;)V
    .locals 8

    .line 263
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 271
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 269
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'email\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 279
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->emailIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 277
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'email\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$firstName(Ljava/lang/String;)V
    .locals 8

    .line 207
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 215
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'firstName\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 223
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->firstNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 221
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'firstName\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$gender(Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 294
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 300
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 303
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 307
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 309
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 312
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->genderIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$height(Ljava/lang/Double;)V
    .locals 16

    move-object/from16 v0, p0

    .line 360
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 366
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 369
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 373
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 375
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 378
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$heightMetric(Ljava/lang/Boolean;)V
    .locals 14

    .line 393
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 399
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 402
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 406
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 408
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 411
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->heightMetricIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$id(Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 177
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 183
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 186
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 190
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 192
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 195
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->idIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$isConfirmed(Ljava/lang/Boolean;)V
    .locals 14

    .line 705
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 711
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 714
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 718
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 720
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 723
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->isConfirmedIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$key(Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 162
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'key\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$language(Ljava/lang/String;)V
    .locals 14

    .line 672
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 678
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 681
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 685
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 687
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 690
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->languageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lastName(Ljava/lang/String;)V
    .locals 8

    .line 235
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 243
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 241
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'lastName\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 251
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->lastNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'lastName\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$picture(Ljava/lang/String;)V
    .locals 14

    .line 522
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 528
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 531
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 535
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 537
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 540
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->pictureIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$weight(Ljava/lang/Double;)V
    .locals 16

    move-object/from16 v0, p0

    .line 426
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 432
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 435
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 439
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 441
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 444
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$weightMetric(Ljava/lang/Boolean;)V
    .locals 14

    .line 459
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 465
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 468
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 472
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 474
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 477
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy$SHUserColumnInfo;->weightMetricIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1717
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 1720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHUser = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{key:"

    .line 1721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{id:"

    .line 1725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{firstName:"

    .line 1729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$firstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1732
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{lastName:"

    .line 1733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$lastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{email:"

    .line 1737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$email()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{gender:"

    .line 1741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{dateOfBirth:"

    .line 1745
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{height:"

    .line 1749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$height()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$height()Ljava/lang/Double;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{heightMetric:"

    .line 1753
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$heightMetric()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "null"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{weight:"

    .line 1757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$weight()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$weight()Ljava/lang/Double;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v1, "null"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1760
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{weightMetric:"

    .line 1761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6

    :cond_7
    const-string v1, "null"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{distanceMetric:"

    .line 1765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_7

    :cond_8
    const-string v1, "null"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{picture:"

    .line 1769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$picture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$picture()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    const-string v1, "null"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{authLevel:"

    .line 1773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    const-string v1, "null"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{deviceModel:"

    .line 1777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    const-string v1, "null"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{deviceId:"

    .line 1781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    const-string v1, "null"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{devicePass:"

    .line 1785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_d
    const-string v1, "null"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{language:"

    .line 1789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$language()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$language()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_e
    const-string v1, "null"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isConfirmed:"

    .line 1793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHUserRealmProxy;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_e

    :cond_f
    const-string v1, "null"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
