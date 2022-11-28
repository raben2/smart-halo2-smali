.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;->f$0:Ljava/lang/String;

    iput p2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;->f$0:Ljava/lang/String;

    iget v1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;->f$1:I

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;->lambda$updateUserSettings$1(Ljava/lang/String;ILio/realm/Realm;)V

    return-void
.end method
