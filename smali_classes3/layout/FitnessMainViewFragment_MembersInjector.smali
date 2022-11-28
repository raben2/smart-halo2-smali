.class public final Llayout/FitnessMainViewFragment_MembersInjector;
.super Ljava/lang/Object;
.source "FitnessMainViewFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Llayout/FitnessMainViewFragment;",
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

.field private final appStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
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

.field private final settingsStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final userStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Llayout/FitnessMainViewFragment_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Llayout/FitnessMainViewFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Llayout/FitnessMainViewFragment_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Llayout/FitnessMainViewFragment_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Llayout/FitnessMainViewFragment_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p6, p0, Llayout/FitnessMainViewFragment_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Llayout/FitnessMainViewFragment;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v7, Llayout/FitnessMainViewFragment_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Llayout/FitnessMainViewFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectAnalyticsManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 75
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectAppStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 0

    .line 95
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-void
.end method

.method public static injectFitnessCloudManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-void
.end method

.method public static injectFitnessStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V
    .locals 0

    .line 90
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-void
.end method

.method public static injectSettingsStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 0

    .line 85
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method

.method public static injectUserStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 0

    .line 80
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Llayout/FitnessMainViewFragment;

    invoke-virtual {p0, p1}, Llayout/FitnessMainViewFragment_MembersInjector;->injectMembers(Llayout/FitnessMainViewFragment;)V

    return-void
.end method

.method public injectMembers(Llayout/FitnessMainViewFragment;)V
    .locals 1

    .line 60
    iget-object v0, p0, Llayout/FitnessMainViewFragment_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectFitnessCloudManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 61
    iget-object v0, p0, Llayout/FitnessMainViewFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 62
    iget-object v0, p0, Llayout/FitnessMainViewFragment_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectUserStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 63
    iget-object v0, p0, Llayout/FitnessMainViewFragment_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectSettingsStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 64
    iget-object v0, p0, Llayout/FitnessMainViewFragment_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectFitnessStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 65
    iget-object v0, p0, Llayout/FitnessMainViewFragment_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectAppStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    return-void
.end method
