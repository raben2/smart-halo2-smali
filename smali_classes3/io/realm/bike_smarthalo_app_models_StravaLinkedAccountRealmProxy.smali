.class public Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;
.super Lbike/smarthalo/app/models/StravaLinkedAccount;
.source "bike_smarthalo_app_models_StravaLinkedAccountRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;-><init>()V

    .line 94
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;Lbike/smarthalo/app/models/StravaLinkedAccount;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;"
        }
    .end annotation

    .line 541
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 543
    check-cast p3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    return-object p3

    .line 546
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    .line 548
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 549
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 552
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 553
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 554
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 555
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 556
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 557
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 558
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 562
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 563
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    move-result-object p0

    .line 564
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;Lbike/smarthalo/app/models/StravaLinkedAccount;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;"
        }
    .end annotation

    .line 497
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 499
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 502
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 500
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 506
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 507
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 509
    check-cast v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 515
    const-class v2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 516
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    .line 517
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 520
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const/4 v0, 0x0

    move-object v3, v1

    goto :goto_1

    .line 528
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

    .line 529
    new-instance v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;-><init>()V

    .line 530
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 533
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

    .line 537
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;Lbike/smarthalo/app/models/StravaLinkedAccount;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;Lbike/smarthalo/app/models/StravaLinkedAccount;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;
    .locals 1

    .line 321
    new-instance v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/StravaLinkedAccount;IILjava/util/Map;)Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 783
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 786
    new-instance p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-direct {p2}, Lbike/smarthalo/app/models/StravaLinkedAccount;-><init>()V

    .line 787
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 790
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 791
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    return-object p0

    .line 793
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 794
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 796
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    .line 797
    check-cast p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    .line 798
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$accountId(Ljava/lang/String;)V

    .line 799
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationToken(Ljava/lang/String;)V

    .line 800
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$refreshToken(Ljava/lang/String;)V

    .line 801
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    .line 802
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$isAutoUploadOn(Z)V

    .line 803
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$username(Ljava/lang/String;)V

    .line 804
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$imageUrl(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 305
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "StravaLinkedAccount"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "accountId"

    .line 306
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "authenticationToken"

    .line 307
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "refreshToken"

    .line 308
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "authenticationTokenExpiration"

    .line 309
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isAutoUploadOn"

    .line 310
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "username"

    .line 311
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "imageUrl"

    .line 312
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 313
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 338
    const-class p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 339
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 340
    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    const-string v4, "accountId"

    .line 342
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-string v4, "accountId"

    .line 345
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v3, v4}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 348
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/BaseRealm$RealmObjectContext;

    .line 350
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p2, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 351
    new-instance p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 354
    throw p0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    const-string p2, "accountId"

    .line 358
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "accountId"

    .line 359
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 360
    const-class p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p0, p2, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    goto :goto_2

    .line 362
    :cond_2
    const-class p2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    const-string v3, "accountId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    goto :goto_2

    .line 365
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'accountId\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 369
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    const-string v0, "authenticationToken"

    .line 370
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "authenticationToken"

    .line 371
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationToken(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "authenticationToken"

    .line 374
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationToken(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string v0, "refreshToken"

    .line 377
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "refreshToken"

    .line 378
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 379
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$refreshToken(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "refreshToken"

    .line 381
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$refreshToken(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "authenticationTokenExpiration"

    .line 384
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "authenticationTokenExpiration"

    .line 385
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 386
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    goto :goto_5

    :cond_9
    const-string v0, "authenticationTokenExpiration"

    .line 388
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    :cond_a
    :goto_5
    const-string v0, "isAutoUploadOn"

    .line 391
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "isAutoUploadOn"

    .line 392
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "isAutoUploadOn"

    .line 395
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$isAutoUploadOn(Z)V

    goto :goto_6

    .line 393
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAutoUploadOn\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_6
    const-string v0, "username"

    .line 398
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "username"

    .line 399
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 400
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$username(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const-string v0, "username"

    .line 402
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$username(Ljava/lang/String;)V

    :cond_e
    :goto_7
    const-string v0, "imageUrl"

    .line 405
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "imageUrl"

    .line 406
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 407
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$imageUrl(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    const-string v0, "imageUrl"

    .line 409
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$imageUrl(Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    new-instance v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-direct {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;-><init>()V

    .line 421
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    .line 422
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 423
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 424
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountId"

    .line 426
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 427
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$accountId(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 431
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$accountId(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "authenticationToken"

    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 435
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 436
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationToken(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 439
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "refreshToken"

    .line 441
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 442
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 443
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$refreshToken(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 446
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$refreshToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "authenticationTokenExpiration"

    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 449
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_6

    .line 450
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 452
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 453
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "isAutoUploadOn"

    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 456
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 457
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$isAutoUploadOn(Z)V

    goto/16 :goto_0

    .line 459
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 460
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isAutoUploadOn\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "username"

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 463
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 464
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$username(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 467
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$username(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "imageUrl"

    .line 469
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 470
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_c

    .line 471
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$imageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 474
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmSet$imageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 480
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_f

    .line 484
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    return-object p0

    .line 482
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'accountId\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 317
    sget-object v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "StravaLinkedAccount"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 570
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

    .line 571
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 573
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 575
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 576
    iget-wide v2, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    .line 577
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 580
    invoke-static {v11, v12, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v5

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {v11, v12, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v5

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 585
    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    .line 587
    :cond_2
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v15, v5

    .line 589
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 592
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 594
    :cond_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 596
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 598
    :cond_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 600
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 602
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 603
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 605
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 607
    :cond_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 609
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_7
    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
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

    .line 615
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 616
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 617
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 618
    iget-wide v10, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    .line 620
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 621
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 622
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 625
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

    .line 626
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

    .line 629
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 632
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 634
    :cond_2
    invoke-static {v12, v13, v10, v11, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v5

    :goto_1
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 637
    invoke-static {v1, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    .line 639
    :cond_3
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v5

    .line 641
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 644
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 646
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 648
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 650
    :cond_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 652
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 654
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 655
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 657
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 659
    :cond_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 661
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_8
    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 667
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

    .line 668
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 670
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 671
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 672
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 673
    iget-wide v2, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    .line 674
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 677
    invoke-static {v11, v12, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v5

    goto :goto_0

    .line 679
    :cond_1
    invoke-static {v11, v12, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v5

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 682
    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    :cond_2
    move-wide v15, v5

    .line 684
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 687
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 689
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 691
    :goto_2
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 693
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 695
    :cond_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 697
    :goto_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 699
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_4

    .line 701
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 703
    :goto_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 704
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 706
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 708
    :cond_6
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 710
    :goto_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 712
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 714
    :cond_7
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    return-wide v15
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
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

    .line 720
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 722
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 723
    iget-wide v10, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    .line 725
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 726
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 727
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 730
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

    .line 731
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

    .line 734
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 737
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 739
    :cond_2
    invoke-static {v12, v13, v10, v11, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v5

    :goto_1
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 742
    invoke-static {v1, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v5

    .line 744
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 747
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 749
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 751
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 753
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 755
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 757
    :goto_4
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 759
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_5

    .line 761
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 763
    :goto_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 764
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 766
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 768
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 770
    :goto_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 772
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 774
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_7
    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;
    .locals 7

    .line 489
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 490
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 491
    new-instance p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;-><init>()V

    .line 492
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;Lbike/smarthalo/app/models/StravaLinkedAccount;Lbike/smarthalo/app/models/StravaLinkedAccount;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;"
        }
    .end annotation

    .line 810
    move-object p4, p2

    check-cast p4, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    .line 811
    check-cast p3, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;

    .line 812
    const-class p4, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 813
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->maxColumnIndexValue:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 814
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$accountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 815
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 816
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 817
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 818
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$isAutoUploadOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 819
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$username()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 820
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 822
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

    .line 885
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 886
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;

    .line 888
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 889
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 890
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 892
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 893
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 896
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 871
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 873
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 876
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

    .line 877
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

    .line 99
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 103
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    .line 104
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 105
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 106
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 107
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 108
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$accountId()Ljava/lang/String;
    .locals 3

    .line 114
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 115
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->accountIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$authenticationToken()Ljava/lang/String;
    .locals 3

    .line 132
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 133
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$authenticationTokenExpiration()Ljava/lang/Long;
    .locals 3

    .line 192
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 193
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$imageUrl()Ljava/lang/String;
    .locals 3

    .line 277
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 278
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isAutoUploadOn()Z
    .locals 3

    .line 225
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 226
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
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

    .line 866
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$refreshToken()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 163
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$username()Ljava/lang/String;
    .locals 3

    .line 247
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 248
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$accountId(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 126
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'accountId\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$authenticationToken(Ljava/lang/String;)V
    .locals 14

    .line 138
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 144
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 147
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 153
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V
    .locals 16

    move-object/from16 v0, p0

    .line 201
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 207
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 210
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 214
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 216
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 219
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->authenticationTokenExpirationIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$imageUrl(Ljava/lang/String;)V
    .locals 14

    .line 283
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 289
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 292
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 298
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 301
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->imageUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$isAutoUploadOn(Z)V
    .locals 8

    .line 231
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 241
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->isAutoUploadOnIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$refreshToken(Ljava/lang/String;)V
    .locals 14

    .line 168
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 174
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 177
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 183
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 186
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->refreshTokenIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$username(Ljava/lang/String;)V
    .locals 14

    .line 253
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 259
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 262
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 266
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 268
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 271
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy$StravaLinkedAccountColumnInfo;->usernameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 829
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 832
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StravaLinkedAccount = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{accountId:"

    .line 833
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$accountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$accountId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{authenticationToken:"

    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{refreshToken:"

    .line 841
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{authenticationTokenExpiration:"

    .line 845
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isAutoUploadOn:"

    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$isAutoUploadOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{username:"

    .line 853
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$username()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$username()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "null"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 855
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{imageUrl:"

    .line 857
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxy;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v1, "null"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
