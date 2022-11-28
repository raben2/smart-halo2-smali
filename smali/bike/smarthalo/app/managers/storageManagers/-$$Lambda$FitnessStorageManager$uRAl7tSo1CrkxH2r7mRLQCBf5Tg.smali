.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$uRAl7tSo1CrkxH2r7mRLQCBf5Tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/SHRide;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/SHRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$uRAl7tSo1CrkxH2r7mRLQCBf5Tg;->f$0:Lbike/smarthalo/app/models/SHRide;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$uRAl7tSo1CrkxH2r7mRLQCBf5Tg;->f$0:Lbike/smarthalo/app/models/SHRide;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$updateRide$0(Lbike/smarthalo/app/models/SHRide;Lio/realm/Realm;)V

    return-void
.end method
