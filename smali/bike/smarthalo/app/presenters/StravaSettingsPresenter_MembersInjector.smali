.class public final Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "StravaSettingsPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/presenters/StravaSettingsPresenter;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final stravaCloudManagerContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p7, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->stravaCloudManagerContractProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
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
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/presenters/StravaSettingsPresenter;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v8, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static injectStravaCloudManagerContract(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 68
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 69
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 71
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 73
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 73
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 76
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 75
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->stravaCloudManagerContractProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->injectStravaCloudManagerContract(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->injectMembers(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V

    return-void
.end method
