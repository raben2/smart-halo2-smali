.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->lambda$updateUserSettings$2(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method
