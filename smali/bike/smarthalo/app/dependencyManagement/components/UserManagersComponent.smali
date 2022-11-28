.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;
.super Ljava/lang/Object;
.source "UserManagersComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/ViewModels/BaseViewModel;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/MainActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/presenters/BasePresenter;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/profile/ProfileActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/DeviceConnectionJobService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/UserJobService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/UserSettingsJobService;)V
.end method
