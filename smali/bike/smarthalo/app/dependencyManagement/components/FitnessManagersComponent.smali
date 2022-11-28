.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;
.super Ljava/lang/Object;
.source "FitnessManagersComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/activities/DailyRidesActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/managers/LifetimeMetricsManager;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/DeleteRideJobService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/PastRidesJobService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/RidesUploadJobService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/StravaUploadJobService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/UpdateRideJobService;)V
.end method

.method public abstract inject(Llayout/FitnessMainViewFragment;)V
.end method
