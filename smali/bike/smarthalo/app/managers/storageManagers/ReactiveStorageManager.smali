.class public Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;
.super Ljava/lang/Object;
.source "ReactiveStorageManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "ReactiveStorageManager"


# instance fields
.field private context:Landroid/content/Context;

.field private realm:Lio/realm/Realm;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;
    .locals 1

    .line 37
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$getAndObserveHasDevice$6(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getAndObserveUser$5(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;Lio/realm/RealmObject;)Lbike/smarthalo/app/models/SHUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHUser;

    return-object p1
.end method

.method public static synthetic lambda$getAndObserveUserFavourites$1(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;Lio/realm/RealmResults;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getAndObserveUserSettings$0(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;Lio/realm/RealmObject;)Lbike/smarthalo/app/models/SHSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHSettings;

    return-object p1
.end method

.method public static synthetic lambda$observePastRideUpdate$9(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;Lio/realm/RealmObject;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    return-object p1
.end method

.method static synthetic lambda$observePastRidesUpdates$2(Lio/realm/RealmResults;)Lbike/smarthalo/app/models/Ping;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance p0, Lbike/smarthalo/app/models/Ping;

    invoke-direct {p0}, Lbike/smarthalo/app/models/Ping;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$observePendingRidesUpdates$3(Lio/realm/RealmResults;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lio/realm/RealmResults;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$observePendingRidesUpdates$4(Lio/realm/RealmResults;)Lbike/smarthalo/app/models/Ping;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    new-instance p0, Lbike/smarthalo/app/models/Ping;

    invoke-direct {p0}, Lbike/smarthalo/app/models/Ping;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$observeRideDeleted$7(Lio/realm/RealmObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lio/realm/RealmObject;->isValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$observeRideDeleted$8(Lio/realm/RealmObject;)Lbike/smarthalo/app/models/Ping;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    new-instance p0, Lbike/smarthalo/app/models/Ping;

    invoke-direct {p0}, Lbike/smarthalo/app/models/Ping;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getAndObserveHasDevice()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->getAndObserveUser()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;

    .line 116
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndObserveUser()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->asFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;

    .line 105
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$YINwan-xhkgcld6zKp0zFsASALQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$YINwan-xhkgcld6zKp0zFsASALQ;-><init>(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;)V

    .line 106
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAndObserveUserFavourites()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lio/realm/RealmResults;->asFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;

    .line 74
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$VvdANAF_LSwTwSFiKCrQi_dzVdE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$VvdANAF_LSwTwSFiKCrQi_dzVdE;-><init>(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;)V

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveUserSettings()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/SHSettings;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHSettings;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->asFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;

    .line 64
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wAZM8UBdV6JvLlKlQcE5i316ty0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wAZM8UBdV6JvLlKlQcE5i316ty0;-><init>(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;)V

    .line 65
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public observePastRideUpdate(Lbike/smarthalo/app/models/SHPastRide;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "stamp"

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->asFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$2S8bcO0FwH_tD2upTTKe3AlZZTw;

    .line 144
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$TLhI4jgmLKHcd0oiTilX-MOB6GI;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$TLhI4jgmLKHcd0oiTilX-MOB6GI;-><init>(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;)V

    .line 145
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 146
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public observePastRidesUpdates()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lio/realm/RealmResults;->asFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 83
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$b8_20Jay07X2Cre0fEg1psH6cdk;

    .line 84
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public observePendingRidesUpdates()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "isActive"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lio/realm/RealmResults;->asFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$El1RDONaQbKnvb3RAG0bsaV_7ZI;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$El1RDONaQbKnvb3RAG0bsaV_7ZI;

    .line 94
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wMcqbj7AbXLt61bHG0e2jL1TjJA;

    .line 95
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public observeRideDeleted(Lbike/smarthalo/app/models/SHRide;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHRide;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->asFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$mmrve61949leUis8dnPjn4QwCp8;

    .line 129
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$yJTlmaYAeTzvDcQEVL0sbhy5N0Q;

    .line 130
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lio/reactivex/Flowable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDispose()V
    .locals 1

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->realm:Lio/realm/Realm;

    :cond_1
    return-void
.end method
