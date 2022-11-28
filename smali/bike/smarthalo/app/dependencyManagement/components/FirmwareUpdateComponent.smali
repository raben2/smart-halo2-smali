.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;
.super Ljava/lang/Object;
.source "FirmwareUpdateComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/activities/DFUActivity;)V
.end method
