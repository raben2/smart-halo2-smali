.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$M6rf6xNdyaZwc5QpHrHmnzFdR70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$M6rf6xNdyaZwc5QpHrHmnzFdR70;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$M6rf6xNdyaZwc5QpHrHmnzFdR70;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$updateLocalRides$3(Ljava/util/List;Lio/realm/Realm;)V

    return-void
.end method
