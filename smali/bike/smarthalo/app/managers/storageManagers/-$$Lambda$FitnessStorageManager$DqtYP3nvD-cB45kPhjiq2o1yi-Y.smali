.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/api/strava/StravaAthlete;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/api/strava/StravaAthlete;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$0:Lbike/smarthalo/app/api/strava/StravaAthlete;

    iput-object p2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$3:J

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 6

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$0:Lbike/smarthalo/app/api/strava/StravaAthlete;

    iget-object v1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;->f$3:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$addStravaAccount$8(Lbike/smarthalo/app/api/strava/StravaAthlete;Ljava/lang/String;Ljava/lang/String;JLio/realm/Realm;)V

    return-void
.end method
