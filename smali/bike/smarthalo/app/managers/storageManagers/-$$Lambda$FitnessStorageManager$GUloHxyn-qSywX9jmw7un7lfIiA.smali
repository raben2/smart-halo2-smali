.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$GUloHxyn-qSywX9jmw7un7lfIiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/api/strava/StravaAthlete;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/api/strava/StravaAthlete;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$GUloHxyn-qSywX9jmw7un7lfIiA;->f$0:Lbike/smarthalo/app/api/strava/StravaAthlete;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$GUloHxyn-qSywX9jmw7un7lfIiA;->f$0:Lbike/smarthalo/app/api/strava/StravaAthlete;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$updateStravaAccount$9(Lbike/smarthalo/app/api/strava/StravaAthlete;Lio/realm/Realm;)V

    return-void
.end method
