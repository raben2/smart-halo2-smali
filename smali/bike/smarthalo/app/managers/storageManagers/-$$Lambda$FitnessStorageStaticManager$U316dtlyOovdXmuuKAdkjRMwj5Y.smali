.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$U316dtlyOovdXmuuKAdkjRMwj5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$U316dtlyOovdXmuuKAdkjRMwj5Y;->f$0:J

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$U316dtlyOovdXmuuKAdkjRMwj5Y;->f$0:J

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->lambda$deleteRide$7(JLio/realm/Realm;)V

    return-void
.end method
