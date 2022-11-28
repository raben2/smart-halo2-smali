.class public Lbike/smarthalo/app/ViewModels/AlarmViewModel;
.super Lbike/smarthalo/app/ViewModels/BaseViewModel;
.source "AlarmViewModel.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lbike/smarthalo/app/ViewModels/BaseViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public getAlarmTapCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIsAlarmAggressive()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmAggressive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIsAlarmOn()Ljava/lang/Boolean;
    .locals 1

    .line 22
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmArmed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toggleIsAlarmAggressive(Z)V
    .locals 2

    const-string v0, "ALARM_AGGRESSIVE"

    const-string v1, "isAlarmAggressive"

    .line 42
    invoke-virtual {p0, v0, v1, p1}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->updateSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public toggleIsAlarmOn(Z)V
    .locals 2

    const-string v0, "ALARM_AUTO"

    const-string v1, "isAlarmArmed"

    .line 46
    invoke-virtual {p0, v0, v1, p1}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->updateSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
