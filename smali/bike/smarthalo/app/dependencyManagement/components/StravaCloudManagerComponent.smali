.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;
.super Ljava/lang/Object;
.source "StravaCloudManagerComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V
.end method
