.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wAZM8UBdV6JvLlKlQcE5i316ty0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wAZM8UBdV6JvLlKlQcE5i316ty0;->f$0:Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$wAZM8UBdV6JvLlKlQcE5i316ty0;->f$0:Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;

    check-cast p1, Lio/realm/RealmObject;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->lambda$getAndObserveUserSettings$0(Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;Lio/realm/RealmObject;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p1

    return-object p1
.end method
