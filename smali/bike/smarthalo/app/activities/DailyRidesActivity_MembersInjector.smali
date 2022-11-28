.class public final Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;
.super Ljava/lang/Object;
.source "DailyRidesActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/activities/DailyRidesActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;"
        }
    .end annotation
.end field

.field private final fitnessCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;"
        }
    .end annotation
.end field

.field private final fitnessStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final jobServiceCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/activities/DailyRidesActivity;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectFitnessCloudManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-void
.end method

.method public static injectFitnessStorageManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-void
.end method

.method public static injectJobServiceCreator(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/services/JobServiceCreator;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/activities/DailyRidesActivity;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectFitnessStorageManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/services/JobServiceCreator;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectJobServiceCreator(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/services/JobServiceCreator;)V

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lbike/smarthalo/app/activities/DailyRidesActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/activities/DailyRidesActivity;)V

    return-void
.end method
