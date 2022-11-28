.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;
.super Ljava/lang/Object;
.source "CentralServiceComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/services/SHCentralService;)V
.end method
