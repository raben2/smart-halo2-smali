.class public interface abstract Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
.super Ljava/lang/Object;
.source "SettingsStorageContract.java"


# virtual methods
.method public abstract getUserSettings()Lbike/smarthalo/app/models/SHSettings;
.end method

.method public abstract initSettings()V
.end method

.method public abstract initSettings(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateUserSettings(Ljava/lang/String;I)V
.end method

.method public abstract updateUserSettings(Ljava/lang/String;Ljava/lang/String;)V
.end method
