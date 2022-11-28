.class public Lbike/smarthalo/app/presenters/AssistantPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "AssistantPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;


# instance fields
.field private view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lbike/smarthalo/app/presenters/AssistantPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;
    .locals 1

    .line 23
    new-instance v0, Lbike/smarthalo/app/presenters/AssistantPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/AssistantPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;)V

    return-object v0
.end method


# virtual methods
.method public getAssistantVolume()I
    .locals 1

    .line 27
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$assistantVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsAssistantSoundOn()Z
    .locals 1

    .line 33
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWithSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsAssistingGlobal()Z
    .locals 1

    .line 53
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAssistantVolume(I)V
    .locals 1

    const-string v0, "assistantVolume"

    .line 39
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/AssistantPresenter;->updateSetting(Ljava/lang/String;I)V

    return-void
.end method

.method public toggleAssistantSound(Z)V
    .locals 1

    const-string v0, "isAssistingWithSound"

    .line 43
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/AssistantPresenter;->updateSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public toggleIsAssistingGlobal(Z)V
    .locals 1

    const-string v0, "isAssistingGlobal"

    .line 48
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/AssistantPresenter;->updateSetting(Ljava/lang/String;Z)V

    return-void
.end method
