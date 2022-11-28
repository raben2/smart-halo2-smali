.class public interface abstract Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
.super Ljava/lang/Object;
.source "AppStorageContract.java"


# virtual methods
.method public abstract deleteLocation(Ljava/lang/String;)V
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getItem(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastSelectedRouteType()Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract removeItem(Ljava/lang/String;)V
.end method

.method public abstract setBooleanItem(Ljava/lang/String;Z)V
.end method

.method public abstract setItemAsync(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
.end method

.method public abstract setItemSync(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLastSelectedRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
.end method
