.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$waLNRT-kuMGm7sSutMQ4zv8p5mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/SHGoal;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$waLNRT-kuMGm7sSutMQ4zv8p5mw;->f$0:Lbike/smarthalo/app/models/SHGoal;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$waLNRT-kuMGm7sSutMQ4zv8p5mw;->f$0:Lbike/smarthalo/app/models/SHGoal;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$updateUserGoal$1(Lbike/smarthalo/app/models/SHGoal;Lio/realm/Realm;)V

    return-void
.end method
