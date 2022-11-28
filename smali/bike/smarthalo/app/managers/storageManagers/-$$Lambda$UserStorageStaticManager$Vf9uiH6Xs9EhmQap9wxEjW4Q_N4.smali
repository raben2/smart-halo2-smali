.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$Vf9uiH6Xs9EhmQap9wxEjW4Q_N4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$Vf9uiH6Xs9EhmQap9wxEjW4Q_N4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$Vf9uiH6Xs9EhmQap9wxEjW4Q_N4;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->lambda$updateLocalFavouritesAsync$2(Ljava/util/List;Lio/realm/Realm;)V

    return-void
.end method
