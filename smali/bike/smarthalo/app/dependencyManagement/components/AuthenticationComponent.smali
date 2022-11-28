.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;
.super Ljava/lang/Object;
.source "AuthenticationComponent.java"


# annotations
.annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;
    }
.end annotation


# virtual methods
.method public abstract inject(Lbike/smarthalo/app/onboarding/OnboardingActivity;)V
.end method
