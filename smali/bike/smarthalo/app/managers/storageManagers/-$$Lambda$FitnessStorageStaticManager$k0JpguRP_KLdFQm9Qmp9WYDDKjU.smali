.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$k0JpguRP_KLdFQm9Qmp9WYDDKjU;
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

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$k0JpguRP_KLdFQm9Qmp9WYDDKjU;->f$0:Lbike/smarthalo/app/models/SHGoal;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$k0JpguRP_KLdFQm9Qmp9WYDDKjU;->f$0:Lbike/smarthalo/app/models/SHGoal;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->lambda$updateUserGoal$1(Lbike/smarthalo/app/models/SHGoal;Lio/realm/Realm;)V

    return-void
.end method
