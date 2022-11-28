.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$4pGM6lwdOd7IXoOMblWTBwdcSCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$4pGM6lwdOd7IXoOMblWTBwdcSCQ;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$4pGM6lwdOd7IXoOMblWTBwdcSCQ;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    check-cast p1, Lbike/smarthalo/app/models/CloudRide;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$launchManualStravaUploadFlow$2(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/CloudRide;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
