.class public Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;
.super Lbike/smarthalo/app/models/SHLocation;
.source "bike_smarthalo_app_models_SHLocationRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 109
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHLocation;"
        }
    .end annotation

    .line 737
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 739
    check-cast p3, Lbike/smarthalo/app/models/SHLocation;

    return-object p3

    .line 742
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    .line 744
    const-class v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 745
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 748
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 749
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 750
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 751
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 752
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 753
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 754
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 755
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 756
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 757
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 758
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 759
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 763
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 764
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    move-result-object p0

    .line 765
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHLocation;"
        }
    .end annotation

    .line 699
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 700
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 701
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 704
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 702
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 708
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 709
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 711
    check-cast v1, Lbike/smarthalo/app/models/SHLocation;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 717
    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 718
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    .line 719
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v0, 0x0

    move-object v3, v1

    goto :goto_0

    .line 724
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

    .line 725
    new-instance v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;-><init>()V

    .line 726
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 729
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

    .line 733
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;
    .locals 1

    .line 455
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/SHLocation;IILjava/util/Map;)Lbike/smarthalo/app/models/SHLocation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHLocation;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/SHLocation;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1012
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 1015
    new-instance p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {p2}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 1016
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1019
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 1020
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/SHLocation;

    return-object p0

    .line 1022
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lbike/smarthalo/app/models/SHLocation;

    .line 1023
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 1025
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    .line 1026
    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    .line 1027
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$key(Ljava/lang/String;)V

    .line 1028
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 1029
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    .line 1030
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    .line 1031
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$type(I)V

    .line 1032
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$latitude(Ljava/lang/Double;)V

    .line 1033
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$longitude(Ljava/lang/Double;)V

    .line 1034
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$altitude(Ljava/lang/Double;)V

    .line 1035
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$speed(F)V

    .line 1036
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$heading(F)V

    .line 1037
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$accuracy(F)V

    .line 1038
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$timestamp(J)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 434
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "SHLocation"

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "key"

    .line 435
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "title"

    .line 436
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "description"

    .line 437
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "address"

    .line 438
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "type"

    .line 439
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "latitude"

    .line 440
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "longitude"

    .line 441
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "altitude"

    .line 442
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "speed"

    .line 443
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "heading"

    .line 444
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "accuracy"

    .line 445
    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "timestamp"

    .line 446
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 447
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHLocation;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 472
    const-class p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 473
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 474
    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    const-string v4, "key"

    .line 476
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    const-string v4, "key"

    .line 477
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

    .line 480
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/BaseRealm$RealmObjectContext;

    .line 482
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p2, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 483
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 486
    throw p0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    const-string p2, "key"

    .line 490
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "key"

    .line 491
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 492
    const-class p2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p0, p2, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    goto :goto_2

    .line 494
    :cond_2
    const-class p2, Lbike/smarthalo/app/models/SHLocation;

    const-string v3, "key"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    goto :goto_2

    .line 497
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'key\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 501
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    const-string v0, "title"

    .line 502
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "title"

    .line 503
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 504
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "title"

    .line 506
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string v0, "description"

    .line 509
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "description"

    .line 510
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "description"

    .line 513
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "address"

    .line 516
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "address"

    .line 517
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 518
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v0, "address"

    .line 520
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v0, "type"

    .line 523
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "type"

    .line 524
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "type"

    .line 527
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$type(I)V

    goto :goto_6

    .line 525
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_6
    const-string v0, "latitude"

    .line 530
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "latitude"

    .line 531
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 532
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$latitude(Ljava/lang/Double;)V

    goto :goto_7

    :cond_d
    const-string v0, "latitude"

    .line 534
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$latitude(Ljava/lang/Double;)V

    :cond_e
    :goto_7
    const-string v0, "longitude"

    .line 537
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "longitude"

    .line 538
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 539
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$longitude(Ljava/lang/Double;)V

    goto :goto_8

    :cond_f
    const-string v0, "longitude"

    .line 541
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$longitude(Ljava/lang/Double;)V

    :cond_10
    :goto_8
    const-string v0, "altitude"

    .line 544
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "altitude"

    .line 545
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 546
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$altitude(Ljava/lang/Double;)V

    goto :goto_9

    :cond_11
    const-string v0, "altitude"

    .line 548
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$altitude(Ljava/lang/Double;)V

    :cond_12
    :goto_9
    const-string v0, "speed"

    .line 551
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "speed"

    .line 552
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "speed"

    .line 555
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$speed(F)V

    goto :goto_a

    .line 553
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'speed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_a
    const-string v0, "heading"

    .line 558
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "heading"

    .line 559
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "heading"

    .line 562
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$heading(F)V

    goto :goto_b

    .line 560
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'heading\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    const-string v0, "accuracy"

    .line 565
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "accuracy"

    .line 566
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "accuracy"

    .line 569
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$accuracy(F)V

    goto :goto_c

    .line 567
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'accuracy\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_c
    const-string v0, "timestamp"

    .line 572
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "timestamp"

    .line 573
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "timestamp"

    .line 576
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$timestamp(J)V

    goto :goto_d

    .line 574
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'timestamp\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_d
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHLocation;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 588
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    .line 589
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 590
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 591
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    .line 593
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 594
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 595
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$key(Ljava/lang/String;)V

    goto :goto_1

    .line 597
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 598
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$key(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "title"

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 602
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 603
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 606
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "description"

    .line 608
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 609
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 610
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 613
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$description(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "address"

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 616
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_6

    .line 617
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 620
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "type"

    .line 622
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 623
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 624
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$type(I)V

    goto/16 :goto_0

    .line 626
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 627
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "latitude"

    .line 629
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 630
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 631
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$latitude(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 633
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 634
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$latitude(Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "longitude"

    .line 636
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 637
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_c

    .line 638
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$longitude(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 640
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 641
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$longitude(Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_d
    const-string v5, "altitude"

    .line 643
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 644
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_e

    .line 645
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$altitude(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 647
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 648
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$altitude(Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_f
    const-string v5, "speed"

    .line 650
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 651
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_10

    .line 652
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$speed(F)V

    goto/16 :goto_0

    .line 654
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 655
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'speed\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v5, "heading"

    .line 657
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 658
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_12

    .line 659
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$heading(F)V

    goto/16 :goto_0

    .line 661
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 662
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'heading\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-string v5, "accuracy"

    .line 664
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 665
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_14

    .line 666
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$accuracy(F)V

    goto/16 :goto_0

    .line 668
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 669
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'accuracy\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    const-string v5, "timestamp"

    .line 671
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 672
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_16

    .line 673
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmSet$timestamp(J)V

    goto/16 :goto_0

    .line 675
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 676
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'timestamp\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 679
    :cond_17
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 682
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_19

    .line 686
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLocation;

    return-object p0

    .line 684
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'key\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 451
    sget-object v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHLocation"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 771
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

    .line 772
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 774
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 776
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 777
    iget-wide v2, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    .line 779
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 781
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

    .line 784
    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    .line 786
    :cond_2
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v15, v7

    .line 788
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 791
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 793
    :cond_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 795
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 797
    :cond_4
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 799
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 801
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 802
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 804
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 806
    :cond_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 808
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 810
    :cond_7
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 812
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 814
    :cond_8
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 815
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 816
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 817
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

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

    .line 822
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 823
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 824
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 825
    iget-wide v10, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    .line 827
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 828
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 829
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 832
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

    .line 833
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

    .line 837
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    .line 839
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v12, v13, v10, v11, v7}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v9, v7, v5

    if-nez v9, :cond_3

    .line 842
    invoke-static {v1, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    .line 844
    :cond_3
    invoke-static {v4}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v7

    .line 846
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 849
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 851
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 853
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 855
    :cond_5
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 857
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 859
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 860
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 862
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 864
    :cond_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 866
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 868
    :cond_8
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 870
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 872
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 873
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 874
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 875
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 880
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

    .line 881
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 883
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 884
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 885
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 886
    iget-wide v2, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    .line 888
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_1

    .line 890
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

    .line 893
    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    :cond_2
    move-wide v15, v7

    .line 895
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 898
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 900
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 902
    :goto_2
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 904
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 906
    :cond_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 908
    :goto_3
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 910
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 912
    :cond_5
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 914
    :goto_4
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 915
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 917
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_5

    .line 919
    :cond_6
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 921
    :goto_5
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 923
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_6

    .line 925
    :cond_7
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 927
    :goto_6
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 929
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_7

    .line 931
    :cond_8
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 933
    :goto_7
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 934
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 935
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 936
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

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

    .line 941
    const-class v1, Lbike/smarthalo/app/models/SHLocation;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 942
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 943
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 944
    iget-wide v10, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    .line 946
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 947
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 948
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 951
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

    .line 952
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

    .line 956
    :cond_1
    move-object v15, v3

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    .line 958
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v12, v13, v10, v11, v7}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v9, v7, v5

    if-nez v9, :cond_3

    .line 961
    invoke-static {v1, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v7

    .line 963
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 966
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 968
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 970
    :goto_3
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 972
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 974
    :cond_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 976
    :goto_4
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 978
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 980
    :cond_6
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 982
    :goto_5
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 983
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 985
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_6

    .line 987
    :cond_7
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 989
    :goto_6
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 991
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_7

    .line 993
    :cond_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 995
    :goto_7
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 997
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_8

    .line 999
    :cond_9
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1001
    :goto_8
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1002
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1003
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 1004
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;
    .locals 7

    .line 691
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 692
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 693
    new-instance p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;-><init>()V

    .line 694
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHLocation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHLocation;"
        }
    .end annotation

    .line 1044
    move-object p4, p2

    check-cast p4, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    .line 1045
    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;

    .line 1046
    const-class p4, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 1047
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->maxColumnIndexValue:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 1048
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1049
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1050
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$description()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1051
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1052
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$type()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1053
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$latitude()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1054
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$longitude()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1055
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$altitude()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1056
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$speed()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1057
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$heading()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1058
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$accuracy()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 1059
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;->realmGet$timestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1061
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

    .line 1144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1145
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;

    .line 1147
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1148
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1151
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1152
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1153
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1155
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1130
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1132
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1135
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

    .line 1136
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

    .line 114
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 118
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    .line 119
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 120
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 121
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 122
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 123
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$accuracy()F
    .locals 3

    .line 392
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 393
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 3

    .line 207
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 208
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$altitude()Ljava/lang/Double;
    .locals 3

    .line 315
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 316
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 319
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .locals 3

    .line 177
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 178
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$heading()F
    .locals 3

    .line 370
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 371
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$key()Ljava/lang/String;
    .locals 3

    .line 129
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 130
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->keyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$latitude()Ljava/lang/Double;
    .locals 3

    .line 259
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 260
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$longitude()Ljava/lang/Double;
    .locals 3

    .line 287
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 288
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    .line 1125
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$speed()F
    .locals 3

    .line 348
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 349
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$timestamp()J
    .locals 3

    .line 414
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 415
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 3

    .line 147
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 148
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()I
    .locals 3

    .line 237
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 238
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$accuracy(F)V
    .locals 8

    .line 398
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 408
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->accuracyIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 14

    .line 213
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 219
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 222
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 228
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 231
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->addressIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$altitude(Ljava/lang/Double;)V
    .locals 16

    move-object/from16 v0, p0

    .line 324
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 330
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 333
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 337
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 339
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 342
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->altitudeIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 14

    .line 183
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 189
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 192
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 198
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->descriptionIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$heading(F)V
    .locals 8

    .line 376
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 386
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->headingIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$key(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 141
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'key\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$latitude(Ljava/lang/Double;)V
    .locals 9

    .line 265
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 273
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 271
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'latitude\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 281
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->latitudeIndex:J

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void

    .line 279
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'latitude\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$longitude(Ljava/lang/Double;)V
    .locals 9

    .line 293
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 301
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 299
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'longitude\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 309
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->longitudeIndex:J

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void

    .line 307
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set non-nullable field \'longitude\' to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$speed(F)V
    .locals 8

    .line 354
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 364
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->speedIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$timestamp(J)V
    .locals 9

    .line 420
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 430
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->timestampIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 14

    .line 153
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 159
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 162
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v8, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 168
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v0, v0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 171
    :cond_3
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(I)V
    .locals 9

    .line 243
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 253
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy$SHLocationColumnInfo;->typeIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1068
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 1071
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHLocation = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{key:"

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{title:"

    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1078
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1079
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{description:"

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{address:"

    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{type:"

    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$type()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{latitude:"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1094
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1095
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{longitude:"

    .line 1096
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1098
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1099
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{altitude:"

    .line 1100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{speed:"

    .line 1104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$speed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{heading:"

    .line 1108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$heading()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{accuracy:"

    .line 1112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$accuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{timestamp:"

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxy;->realmGet$timestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
