.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# instance fields
.field private final synthetic f$0:Lio/realm/Realm;

.field private final synthetic f$1:Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;


# direct methods
.method public synthetic constructor <init>(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;->f$0:Lio/realm/Realm;

    iput-object p2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;->f$1:Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;->f$0:Lio/realm/Realm;

    iget-object v1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;->f$1:Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->lambda$updateLocalFavouritesAsync$4(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;Ljava/lang/Throwable;)V

    return-void
.end method
