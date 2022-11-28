.class public Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;
.super Lbike/smarthalo/app/models/UserFavourite;
.source "bike_smarthalo_app_models_UserFavouriteRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lbike/smarthalo/app/models/UserFavourite;-><init>()V

    .line 100
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;Lbike/smarthalo/app/models/UserFavourite;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/UserFavourite;"
        }
    .end annotation

    .line 658
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 660
    check-cast p3, Lbike/smarthalo/app/models/UserFavourite;

    return-object p3

    .line 663
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    .line 665
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 666
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 669
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 670
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 671
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 672
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 673
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 674
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 675
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 676
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 677
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 681
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 682
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    move-result-object p0

    .line 683
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;Lbike/smarthalo/app/models/UserFavourite;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/UserFavourite;"
        }
    .end annotation

    .line 614
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 615
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 616
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 619
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 617
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 623
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 624
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 626
    check-cast v1, Lbike/smarthalo/app/models/UserFavourite;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 632
    const-class v2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 633
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    .line 634
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 637
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    .line 639
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

    .line 645
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

    .line 646
    new-instance v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;-><init>()V

    .line 647
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 650
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

    .line 654
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;Lbike/smarthalo/app/models/UserFavourite;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;
    .locals 1

    .line 390
    new-instance v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/UserFavourite;IILjava/util/Map;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/UserFavourite;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 926
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 929
    new-instance p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-direct {p2}, Lbike/smarthalo/app/models/UserFavourite;-><init>()V

    .line 930
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 933
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 934
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/UserFavourite;

    return-object p0

    .line 936
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lbike/smarthalo/app/models/UserFavourite;

    .line 937
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 939
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    .line 940
    check-cast p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    .line 941
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    .line 942
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$userId(Ljava/lang/Integer;)V

    .line 943
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$favouriteType(Ljava/lang/String;)V

    .line 944
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    .line 945
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$label(Ljava/lang/String;)V

    .line 946
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$latitude(D)V

    .line 947
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$longitude(D)V

    .line 948
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 949
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 372
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "UserFavourite"

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "id"

    .line 373
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "userId"

    .line 374
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "favouriteType"

    .line 375
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "address"

    .line 376
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "label"

    .line 377
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "latitude"

    .line 378
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "longitude"

    .line 379
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "createdAt"

    .line 380
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "updatedAt"

    .line 381
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 382
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/UserFavourite;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 407
    const-class p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 408
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 409
    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    const-string v4, "id"

    .line 411
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-string v4, "id"

    .line 414
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 417
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/BaseRealm$RealmObjectContext;

    .line 419
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p2, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 420
    new-instance p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 423
    throw p0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    const-string p2, "id"

    .line 427
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "id"

    .line 428
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 429
    const-class p2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p0, p2, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    goto :goto_2

    .line 431
    :cond_2
    const-class p2, Lbike/smarthalo/app/models/UserFavourite;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    goto :goto_2

    .line 434
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 438
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    const-string v0, "userId"

    .line 439
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "userId"

    .line 440
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$userId(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_5
    const-string v0, "userId"

    .line 443
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$userId(Ljava/lang/Integer;)V

    :cond_6
    :goto_3
    const-string v0, "favouriteType"

    .line 446
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "favouriteType"

    .line 447
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 448
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$favouriteType(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "favouriteType"

    .line 450
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$favouriteType(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "address"

    .line 453
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "address"

    .line 454
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 455
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v0, "address"

    .line 457
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v0, "label"

    .line 460
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "label"

    .line 461
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 462
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$label(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v0, "label"

    .line 464
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$label(Ljava/lang/String;)V

    :cond_c
    :goto_6
    const-string v0, "latitude"

    .line 467
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "latitude"

    .line 468
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "latitude"

    .line 471
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$latitude(D)V

    goto :goto_7

    .line 469
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'latitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_7
    const-string v0, "longitude"

    .line 474
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "longitude"

    .line 475
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "longitude"

    .line 478
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$longitude(D)V

    goto :goto_8

    .line 476
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'longitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_8
    const-string v0, "createdAt"

    .line 481
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "createdAt"

    .line 482
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 483
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_9

    :cond_11
    const-string v0, "createdAt"

    .line 485
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 486
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 487
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_9

    .line 489
    :cond_12
    new-instance v0, Ljava/util/Date;

    const-string v2, "createdAt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    :cond_13
    :goto_9
    const-string v0, "updatedAt"

    .line 493
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "updatedAt"

    .line 494
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 495
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_a

    :cond_14
    const-string v0, "updatedAt"

    .line 497
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 498
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 499
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_a

    .line 501
    :cond_15
    new-instance v0, Ljava/util/Date;

    const-string v1, "updatedAt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    :cond_16
    :goto_a
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    new-instance v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-direct {v0}, Lbike/smarthalo/app/models/UserFavourite;-><init>()V

    .line 514
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    .line 515
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 517
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 520
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1

    .line 521
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    goto :goto_1

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 524
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$id(Ljava/lang/Integer;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "userId"

    .line 527
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 528
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_3

    .line 529
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$userId(Ljava/lang/Integer;)V

    goto :goto_0

    .line 531
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 532
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$userId(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const-string v5, "favouriteType"

    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 535
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_5

    .line 536
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$favouriteType(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 539
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$favouriteType(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v5, "address"

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 542
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_7

    .line 543
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 546
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "label"

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 549
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_9

    .line 550
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$label(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 553
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$label(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "latitude"

    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 556
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_b

    .line 557
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$latitude(D)V

    goto/16 :goto_0

    .line 559
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 560
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'latitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    const-string v5, "longitude"

    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 563
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_d

    .line 564
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$longitude(D)V

    goto/16 :goto_0

    .line 566
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 567
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'longitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    const-string v5, "createdAt"

    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v7, -0x1

    if-eqz v5, :cond_11

    .line 570
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_f

    .line 571
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 572
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 573
    :cond_f
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_10

    .line 574
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    cmp-long v6, v4, v7

    if-lez v6, :cond_0

    .line 576
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 579
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_11
    const-string v5, "updatedAt"

    .line 581
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 582
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_12

    .line 583
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 584
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 585
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_13

    .line 586
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    cmp-long v6, v4, v7

    if-lez v6, :cond_0

    .line 588
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 591
    :cond_13
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 594
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 597
    :cond_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_16

    .line 601
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/UserFavourite;

    return-object p0

    .line 599
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 386
    sget-object v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserFavourite"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 689
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

    .line 690
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 692
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 693
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 694
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 695
    iget-wide v8, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    .line 696
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_1

    .line 699
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 701
    :cond_1
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 704
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    .line 706
    :cond_2
    invoke-static {v10}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v15, v2

    .line 708
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 711
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 713
    :cond_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 715
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 717
    :cond_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 719
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 721
    :cond_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 723
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 725
    :cond_6
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 726
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 727
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 729
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 731
    :cond_7
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 733
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    :cond_8
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

    .line 739
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 740
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 741
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 742
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    .line 744
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 745
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lbike/smarthalo/app/models/UserFavourite;

    .line 746
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 749
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

    .line 750
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 753
    :cond_1
    move-object v15, v11

    check-cast v15, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v16

    if-nez v16, :cond_2

    .line 756
    invoke-static {v12, v13, v9, v10}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 758
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    move-wide v3, v12

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 761
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v9, v10, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    .line 763
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v3

    .line 765
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 768
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

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

    .line 770
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 772
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 774
    :cond_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 776
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 778
    :cond_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 780
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 782
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 783
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 784
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 786
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 788
    :cond_8
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 790
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    :cond_9
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 796
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

    .line 797
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 799
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 800
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 801
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 802
    iget-wide v8, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    .line 803
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 806
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 808
    :cond_1
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 811
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    :cond_2
    move-wide v15, v2

    .line 813
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 816
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_2

    .line 818
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 820
    :goto_2
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 822
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 824
    :cond_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 826
    :goto_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 828
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 830
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 832
    :goto_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 834
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 836
    :cond_6
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 838
    :goto_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 839
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 840
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 842
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_6

    .line 844
    :cond_7
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 846
    :goto_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 848
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_7

    .line 850
    :cond_8
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_7
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

    .line 856
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 858
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 859
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    .line 861
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 862
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lbike/smarthalo/app/models/UserFavourite;

    .line 863
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 866
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

    .line 867
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 870
    :cond_1
    move-object v15, v11

    check-cast v15, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 873
    invoke-static {v12, v13, v9, v10}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 875
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    move-wide v3, v12

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 878
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v9, v10, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v3

    .line 880
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 883
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

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

    .line 885
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 887
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 889
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 891
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 893
    :goto_4
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 895
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 897
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 899
    :goto_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 901
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 903
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 905
    :goto_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 906
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 907
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 909
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_7

    .line 911
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 913
    :goto_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 915
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_8

    .line 917
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_8
    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;
    .locals 7

    .line 606
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 607
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 608
    new-instance p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;-><init>()V

    .line 609
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/UserFavourite;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/UserFavourite;"
        }
    .end annotation

    .line 955
    move-object p4, p2

    check-cast p4, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    .line 956
    check-cast p3, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;

    .line 957
    const-class p4, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 958
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->maxColumnIndexValue:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 959
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$id()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 960
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$userId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 961
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 962
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 963
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$label()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 964
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 965
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 966
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 967
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 969
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

    .line 1040
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1041
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;

    .line 1043
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1044
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1045
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1047
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1048
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1049
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1051
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1026
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1028
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1031
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

    .line 1032
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

    .line 105
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 109
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    .line 110
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 111
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 112
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 113
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 114
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 205
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .locals 3

    .line 308
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 309
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 312
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$favouriteType()Ljava/lang/String;
    .locals 3

    .line 174
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 175
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/Integer;
    .locals 3

    .line 120
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 121
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$label()Ljava/lang/String;
    .locals 3

    .line 234
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 235
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$latitude()D
    .locals 3

    .line 264
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 265
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 3

    .line 286
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 287
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

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

    .line 1021
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 3

    .line 341
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 342
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/Integer;
    .locals 3

    .line 141
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 142
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 14

    .line 210
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 216
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 219
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 225
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->addressIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .locals 14

    .line 317
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 323
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 326
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 332
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 335
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$favouriteType(Ljava/lang/String;)V
    .locals 14

    .line 180
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 186
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 189
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 195
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 198
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->favouriteTypeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$id(Ljava/lang/Integer;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 135
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$label(Ljava/lang/String;)V
    .locals 14

    .line 240
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 246
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 249
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 255
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->labelIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 9

    .line 270
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 280
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->latitudeIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 9

    .line 292
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 302
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->longitudeIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 14

    .line 350
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 356
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 359
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    .line 363
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 365
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 368
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$userId(Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 150
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 156
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 159
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 163
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 165
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 168
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy$UserFavouriteColumnInfo;->userIdIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 976
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserFavourite = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{id:"

    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{userId:"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$userId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$userId()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{favouriteType:"

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{address:"

    .line 992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{label:"

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$label()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$label()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "null"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 999
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{latitude:"

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{longitude:"

    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1007
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{createdAt:"

    .line 1008
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v1, "null"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1010
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{updatedAt:"

    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxy;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    goto :goto_6

    :cond_7
    const-string v1, "null"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1015
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
