.class public abstract Lbike/smarthalo/app/ViewModels/BaseViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "BaseViewModel.java"


# instance fields
.field protected context:Landroid/content/Context;

.field userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 31
    iput-object p1, p0, Lbike/smarthalo/app/ViewModels/BaseViewModel;->context:Landroid/content/Context;

    .line 33
    iget-object p1, p0, Lbike/smarthalo/app/ViewModels/BaseViewModel;->context:Landroid/content/Context;

    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getUserCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;->inject(Lbike/smarthalo/app/ViewModels/BaseViewModel;)V

    return-void
.end method


# virtual methods
.method canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z
    .locals 1

    .line 55
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

.method updateSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/ViewModels/BaseViewModel;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-static {p2, p3}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;I)V

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/ViewModels/BaseViewModel;->context:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method updateSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 46
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/ViewModels/BaseViewModel;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p2, p3}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;I)V

    .line 50
    iget-object p1, p0, Lbike/smarthalo/app/ViewModels/BaseViewModel;->context:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
