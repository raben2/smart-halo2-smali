.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$WO1y03rZz7TU6AfDcqOJLljO9DQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$WO1y03rZz7TU6AfDcqOJLljO9DQ;->f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$WO1y03rZz7TU6AfDcqOJLljO9DQ;->f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->lambda$updateLocalValuesWithCloudConfigs$15(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
