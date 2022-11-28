.class public final Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;
.super Ljava/lang/Object;
.source "PastRidesJobService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/services/PastRidesJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private final fitnessCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
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
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/services/PastRidesJobService;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectFitnessCloudManager(Lbike/smarthalo/app/services/PastRidesJobService;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lbike/smarthalo/app/services/PastRidesJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/services/PastRidesJobService;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/PastRidesJobService;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lbike/smarthalo/app/services/PastRidesJobService;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;->injectMembers(Lbike/smarthalo/app/services/PastRidesJobService;)V

    return-void
.end method
