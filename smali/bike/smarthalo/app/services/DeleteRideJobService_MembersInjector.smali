.class public final Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;
.super Ljava/lang/Object;
.source "DeleteRideJobService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/services/DeleteRideJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private final fitnessCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/services/DeleteRideJobService;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectFitnessCloudManager(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/services/DeleteRideJobService;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lbike/smarthalo/app/services/DeleteRideJobService;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;->injectMembers(Lbike/smarthalo/app/services/DeleteRideJobService;)V

    return-void
.end method
