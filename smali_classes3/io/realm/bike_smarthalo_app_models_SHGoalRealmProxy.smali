.class public Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;
.super Lbike/smarthalo/app/models/SHGoal;
.source "bike_smarthalo_app_models_SHGoalRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$ClassNameHelper;,
        Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lbike/smarthalo/app/models/SHGoal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    invoke-static {}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 103
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;Lbike/smarthalo/app/models/SHGoal;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHGoal;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;",
            "Lbike/smarthalo/app/models/SHGoal;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHGoal;"
        }
    .end annotation

    .line 632
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 634
    check-cast p3, Lbike/smarthalo/app/models/SHGoal;

    return-object p3

    .line 637
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    .line 639
    const-class v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 640
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->maxColumnIndexValue:J

    invoke-direct {v1, v0, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 643
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 644
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 645
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 646
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 647
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 648
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 649
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 650
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 651
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 652
    iget-wide v2, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 656
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 657
    invoke-static {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    move-result-object p0

    .line 658
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;Lbike/smarthalo/app/models/SHGoal;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHGoal;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;",
            "Lbike/smarthalo/app/models/SHGoal;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHGoal;"
        }
    .end annotation

    .line 588
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 589
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 590
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 593
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 591
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 597
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 598
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 600
    check-cast v1, Lbike/smarthalo/app/models/SHGoal;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 606
    const-class v2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 607
    iget-wide v3, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    .line 608
    move-object v5, p2

    check-cast v5, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_3

    .line 611
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v3

    goto :goto_0

    .line 613
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

    .line 619
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

    .line 620
    new-instance v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    invoke-direct {v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;-><init>()V

    .line 621
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v0, p3

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 624
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

    .line 628
    invoke-static/range {v1 .. v6}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->copy(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;Lbike/smarthalo/app/models/SHGoal;ZLjava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;
    .locals 1

    .line 370
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lbike/smarthalo/app/models/SHGoal;IILjava/util/Map;)Lbike/smarthalo/app/models/SHGoal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHGoal;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lbike/smarthalo/app/models/SHGoal;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 825
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 828
    new-instance p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p2}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 829
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 832
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 833
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lbike/smarthalo/app/models/SHGoal;

    return-object p0

    .line 835
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lbike/smarthalo/app/models/SHGoal;

    .line 836
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 838
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    .line 839
    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    .line 840
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$timestamp(Ljava/lang/Long;)V

    .line 841
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$id(I)V

    .line 842
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$type(I)V

    .line 843
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$goal(Ljava/lang/Double;)V

    .line 844
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$progress(D)V

    .line 845
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$previousProgress(D)V

    .line 846
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$nextProgress(I)V

    .line 847
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$isCompleted(Z)V

    .line 848
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$isActive(Z)V

    .line 849
    invoke-interface {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result p0

    invoke-interface {p1, p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$hasShownIntroAnimation(Z)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 351
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "SHGoal"

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "timestamp"

    .line 352
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "id"

    .line 353
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "type"

    .line 354
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "goal"

    .line 355
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "progress"

    .line 356
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "previousProgress"

    .line 357
    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "nextProgress"

    .line 358
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isCompleted"

    .line 359
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "isActive"

    .line 360
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "hasShownIntroAnimation"

    .line 361
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 362
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lbike/smarthalo/app/models/SHGoal;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 387
    const-class p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 388
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    check-cast v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 389
    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    const-string v4, "timestamp"

    .line 391
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-string v4, "timestamp"

    .line 394
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v2, v3, v4, v5}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 397
    sget-object v4, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v4}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/BaseRealm$RealmObjectContext;

    .line 399
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p2, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 400
    new-instance p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    invoke-direct {p2}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 403
    throw p0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    const-string p2, "timestamp"

    .line 407
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "timestamp"

    .line 408
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 409
    const-class p2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p0, p2, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    goto :goto_2

    .line 411
    :cond_2
    const-class p2, Lbike/smarthalo/app/models/SHGoal;

    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    goto :goto_2

    .line 414
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'timestamp\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    const-string v0, "id"

    .line 419
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "id"

    .line 420
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "id"

    .line 423
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$id(I)V

    goto :goto_3

    .line 421
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    const-string v0, "type"

    .line 426
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "type"

    .line 427
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "type"

    .line 430
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$type(I)V

    goto :goto_4

    .line 428
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    const-string v0, "goal"

    .line 433
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "goal"

    .line 434
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 435
    invoke-interface {p0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$goal(Ljava/lang/Double;)V

    goto :goto_5

    :cond_9
    const-string v0, "goal"

    .line 437
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$goal(Ljava/lang/Double;)V

    :cond_a
    :goto_5
    const-string v0, "progress"

    .line 440
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "progress"

    .line 441
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "progress"

    .line 444
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$progress(D)V

    goto :goto_6

    .line 442
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'progress\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_6
    const-string v0, "previousProgress"

    .line 447
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "previousProgress"

    .line 448
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "previousProgress"

    .line 451
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$previousProgress(D)V

    goto :goto_7

    .line 449
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'previousProgress\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_7
    const-string v0, "nextProgress"

    .line 454
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "nextProgress"

    .line 455
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "nextProgress"

    .line 458
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$nextProgress(I)V

    goto :goto_8

    .line 456
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'nextProgress\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_8
    const-string v0, "isCompleted"

    .line 461
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "isCompleted"

    .line 462
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "isCompleted"

    .line 465
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$isCompleted(Z)V

    goto :goto_9

    .line 463
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isCompleted\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_9
    const-string v0, "isActive"

    .line 468
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "isActive"

    .line 469
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "isActive"

    .line 472
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$isActive(Z)V

    goto :goto_a

    .line 470
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isActive\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_a
    const-string v0, "hasShownIntroAnimation"

    .line 475
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "hasShownIntroAnimation"

    .line 476
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "hasShownIntroAnimation"

    .line 479
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$hasShownIntroAnimation(Z)V

    goto :goto_b

    .line 477
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasShownIntroAnimation\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lbike/smarthalo/app/models/SHGoal;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    new-instance v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 491
    move-object v1, v0

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    .line 492
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 493
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 494
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "timestamp"

    .line 496
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 497
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 498
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$timestamp(Ljava/lang/Long;)V

    goto :goto_1

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 501
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$timestamp(Ljava/lang/Long;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "id"

    .line 504
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 505
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 506
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$id(I)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 509
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v5, "type"

    .line 511
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 512
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 513
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$type(I)V

    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 516
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v5, "goal"

    .line 518
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 519
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_6

    .line 520
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$goal(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 522
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 523
    invoke-interface {v1, v6}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$goal(Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "progress"

    .line 525
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 526
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 527
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$progress(D)V

    goto/16 :goto_0

    .line 529
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 530
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'progress\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "previousProgress"

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 533
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 534
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$previousProgress(D)V

    goto/16 :goto_0

    .line 536
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 537
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'previousProgress\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string v5, "nextProgress"

    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 540
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_c

    .line 541
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$nextProgress(I)V

    goto/16 :goto_0

    .line 543
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 544
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'nextProgress\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string v5, "isCompleted"

    .line 546
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 547
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_e

    .line 548
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$isCompleted(Z)V

    goto/16 :goto_0

    .line 550
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 551
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isCompleted\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    const-string v5, "isActive"

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 554
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_10

    .line 555
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$isActive(Z)V

    goto/16 :goto_0

    .line 557
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 558
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'isActive\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v5, "hasShownIntroAnimation"

    .line 560
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 561
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_12

    .line 562
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v1, v4}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmSet$hasShownIntroAnimation(Z)V

    goto/16 :goto_0

    .line 564
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 565
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'hasShownIntroAnimation\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 568
    :cond_13
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 571
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_15

    .line 575
    new-array p1, v2, [Lio/realm/ImportFlag;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHGoal;

    return-object p0

    .line 573
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'timestamp\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 366
    sget-object v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHGoal"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHGoal;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 664
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

    .line 665
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 667
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 669
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 670
    iget-wide v8, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    .line 671
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v10

    if-nez v10, :cond_1

    .line 674
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 676
    :cond_1
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 679
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    .line 681
    :cond_2
    invoke-static {v10}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide v15, v2

    .line 683
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 685
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 686
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 688
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 690
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 691
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 692
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 693
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 694
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 695
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

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

    .line 700
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 702
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 703
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    .line 705
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 706
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lbike/smarthalo/app/models/SHGoal;

    .line 707
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 710
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

    .line 711
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

    .line 714
    :cond_1
    move-object v15, v11

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v16

    if-nez v16, :cond_2

    .line 717
    invoke-static {v12, v13, v9, v10}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 719
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

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

    .line 722
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v9, v10, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    .line 724
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    move-wide/from16 v16, v3

    .line 726
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v7, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v18, v7

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 728
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 729
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 731
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 733
    :cond_4
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 734
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 735
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 736
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 737
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 738
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lbike/smarthalo/app/models/SHGoal;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 743
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

    .line 744
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    .line 746
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 748
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 749
    iget-wide v8, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    .line 750
    move-object v14, v0

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    .line 753
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 755
    :cond_1
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 758
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_1

    :cond_2
    move-wide v15, v2

    .line 760
    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 762
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 763
    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 765
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_2

    .line 767
    :cond_3
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 769
    :goto_2
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 770
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 771
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 772
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 773
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 774
    iget-wide v4, v13, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v14}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

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

    .line 779
    const-class v1, Lbike/smarthalo/app/models/SHGoal;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 780
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 781
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 782
    iget-wide v9, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    .line 784
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 785
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lbike/smarthalo/app/models/SHGoal;

    .line 786
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 789
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

    .line 790
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

    .line 793
    :cond_1
    move-object v15, v11

    check-cast v15, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    .line 796
    invoke-static {v12, v13, v9, v10}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 798
    :cond_2
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

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

    .line 801
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v9, v10, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v3

    .line 803
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v7, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v18, v7

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 805
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 806
    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 808
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    goto :goto_3

    .line 810
    :cond_4
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 812
    :goto_3
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 813
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 814
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 815
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 816
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 817
    iget-wide v5, v14, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v15}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v9, v20

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;
    .locals 7

    .line 580
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 581
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 582
    new-instance p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    invoke-direct {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;-><init>()V

    .line 583
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/SHGoal;Ljava/util/Map;Ljava/util/Set;)Lbike/smarthalo/app/models/SHGoal;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;",
            "Lbike/smarthalo/app/models/SHGoal;",
            "Lbike/smarthalo/app/models/SHGoal;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lbike/smarthalo/app/models/SHGoal;"
        }
    .end annotation

    .line 855
    move-object p4, p2

    check-cast p4, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    .line 856
    check-cast p3, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;

    .line 857
    const-class p4, Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 858
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->maxColumnIndexValue:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 859
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 860
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$id()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 861
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$type()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 862
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$goal()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 863
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$progress()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 864
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$previousProgress()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 865
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$nextProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 866
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isCompleted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 867
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$isActive()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 868
    iget-wide p0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {p3}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxyInterface;->realmGet$hasShownIntroAnimation()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 870
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

    .line 945
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 946
    :cond_1
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;

    .line 948
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 949
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 950
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 952
    :cond_3
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 953
    iget-object v3, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 954
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 956
    :cond_5
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 931
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 933
    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 936
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

    .line 937
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

    .line 108
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 112
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 113
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 114
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 115
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 116
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 117
    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$goal()Ljava/lang/Double;
    .locals 3

    .line 188
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 189
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$hasShownIntroAnimation()Z
    .locals 3

    .line 331
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 332
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$id()I
    .locals 3

    .line 144
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 145
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$isActive()Z
    .locals 3

    .line 309
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 310
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isCompleted()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 288
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$nextProgress()I
    .locals 3

    .line 265
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 266
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$previousProgress()D
    .locals 3

    .line 243
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 244
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$progress()D
    .locals 3

    .line 221
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 222
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

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

    .line 926
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$timestamp()Ljava/lang/Long;
    .locals 3

    .line 123
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 124
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()I
    .locals 3

    .line 166
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 167
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$goal(Ljava/lang/Double;)V
    .locals 16

    move-object/from16 v0, p0

    .line 197
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-nez p1, :cond_1

    .line 203
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v3, v3, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 206
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v9, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 210
    :cond_2
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 212
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 215
    :cond_3
    iget-object v1, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$hasShownIntroAnimation(Z)V
    .locals 8

    .line 337
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 347
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$id(I)V
    .locals 9

    .line 150
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 160
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$isActive(Z)V
    .locals 8

    .line 315
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 325
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$isCompleted(Z)V
    .locals 8

    .line 293
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 303
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$nextProgress(I)V
    .locals 9

    .line 271
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 281
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$previousProgress(D)V
    .locals 9

    .line 249
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 259
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$progress(D)V
    .locals 9

    .line 227
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 237
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$timestamp(Ljava/lang/Long;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 138
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'timestamp\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$type(I)V
    .locals 9

    .line 172
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v2, v2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 182
    iget-object v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->columnInfo:Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    iget-wide v1, v1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 877
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 880
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHGoal = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{timestamp:"

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{id:"

    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{type:"

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$type()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{goal:"

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$goal()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$goal()Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{progress:"

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$progress()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{previousProgress:"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$previousProgress()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{nextProgress:"

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$nextProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isCompleted:"

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$isCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{isActive:"

    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{hasShownIntroAnimation:"

    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;->realmGet$hasShownIntroAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
