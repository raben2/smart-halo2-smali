.class public abstract Lbike/smarthalo/app/presenters/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;
    }
.end annotation


# instance fields
.field appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field keyManager:Lbike/smarthalo/app/managers/KeyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lbike/smarthalo/app/presenters/BasePresenter;->context:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getUserCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;->inject(Lbike/smarthalo/app/presenters/BasePresenter;)V

    return-void
.end method


# virtual methods
.method public canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z
    .locals 1

    .line 88
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onViewCreated()V
    .locals 0

    return-void
.end method

.method public onViewDestroyed()V
    .locals 0

    return-void
.end method

.method public onViewPaused()V
    .locals 0

    return-void
.end method

.method public onViewResumed()V
    .locals 0

    return-void
.end method

.method public updateSetting(Ljava/lang/String;I)V
    .locals 1

    .line 54
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/presenters/BasePresenter;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;I)V

    .line 58
    iget-object p1, p0, Lbike/smarthalo/app/presenters/BasePresenter;->context:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public updateSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/presenters/BasePresenter;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lbike/smarthalo/app/presenters/BasePresenter;->context:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public updateSetting(Ljava/lang/String;Z)V
    .locals 1

    .line 64
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/presenters/BasePresenter;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;I)V

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/presenters/BasePresenter;->context:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public updateUser(Lbike/smarthalo/app/models/SHUser;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 84
    iget-object p1, p0, Lbike/smarthalo/app/presenters/BasePresenter;->context:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    return-void
.end method
