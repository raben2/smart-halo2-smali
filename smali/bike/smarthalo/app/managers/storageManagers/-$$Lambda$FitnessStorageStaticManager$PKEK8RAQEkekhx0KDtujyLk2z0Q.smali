.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$PKEK8RAQEkekhx0KDtujyLk2z0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/SHPastRide;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$PKEK8RAQEkekhx0KDtujyLk2z0Q;->f$0:Lbike/smarthalo/app/models/SHPastRide;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$PKEK8RAQEkekhx0KDtujyLk2z0Q;->f$0:Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->lambda$deleteRideAssociatedWithPastRide$5(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V

    return-void
.end method
