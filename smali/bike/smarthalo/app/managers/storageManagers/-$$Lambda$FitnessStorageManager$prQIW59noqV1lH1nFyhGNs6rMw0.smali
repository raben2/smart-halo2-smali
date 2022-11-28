.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$prQIW59noqV1lH1nFyhGNs6rMw0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$prQIW59noqV1lH1nFyhGNs6rMw0;->f$0:Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$prQIW59noqV1lH1nFyhGNs6rMw0;->f$0:Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;

    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$getPastRidesAsync$2(Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;)Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;

    move-result-object v0

    return-object v0
.end method
