.class public final Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "FitnessCurrentViewPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;",
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

.field private final authenticationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
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

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
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

.field private final userCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p9, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v10, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectFitnessCloudManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-void
.end method

.method public static injectFitnessStorageManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-void
.end method

.method public static injectUserStorageManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 83
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 84
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 83
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 85
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    .line 86
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 85
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 88
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 87
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 89
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 90
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 89
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectFitnessStorageManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 93
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 94
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectMembers(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    return-void
.end method
