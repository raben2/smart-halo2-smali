.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;
.super Ljava/lang/Object;
.source "GeocodingManagerComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/navigation/SHDirectionService;)V
.end method

.method public abstract inject(Llayout/MapViewFragment;)V
.end method

.method public abstract inject(Llayout/SearchFragment;)V
.end method
