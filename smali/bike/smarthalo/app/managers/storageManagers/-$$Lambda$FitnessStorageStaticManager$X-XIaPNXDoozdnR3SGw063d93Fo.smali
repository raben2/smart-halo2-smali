.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$X-XIaPNXDoozdnR3SGw063d93Fo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$X-XIaPNXDoozdnR3SGw063d93Fo;->f$0:Z

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$X-XIaPNXDoozdnR3SGw063d93Fo;->f$0:Z

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->lambda$setStravaRideAutoUpload$8(ZLio/realm/Realm;)V

    return-void
.end method
