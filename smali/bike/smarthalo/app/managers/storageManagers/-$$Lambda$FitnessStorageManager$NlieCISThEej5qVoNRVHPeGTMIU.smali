.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;->f$2:J

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 4

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;->f$2:J

    invoke-static {v0, v1, v2, v3, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->lambda$updateStravaAccountTokens$12(Ljava/lang/String;Ljava/lang/String;JLio/realm/Realm;)V

    return-void
.end method
