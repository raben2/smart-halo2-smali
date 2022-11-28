.class public Lbike/smarthalo/app/dependencyManagement/InjectionHelper;
.super Ljava/lang/Object;
.source "InjectionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCentralServiceComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getCentralServiceComponent()Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getCoreComponent()Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getFirmwareUpdateComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getFirmwareUpdateComponent()Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getFitnessCloudManagerComponent(Landroid/app/Activity;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/app/Activity;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getFitnessManagersComponent()Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getFitnessManagersComponent()Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getGeocodingManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getGeocodingManagerComponent()Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getMainApplication(Landroid/app/Activity;)Lbike/smarthalo/app/MainApplication;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/MainApplication;

    return-object p0
.end method

.method public static getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/MainApplication;

    return-object p0
.end method

.method public static getStravaCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getStravaCloudManagerComponent()Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getUserCloudManagerComponent(Landroid/app/Activity;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/app/Activity;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getUserManagersComponent()Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getUserCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/content/Context;)Lbike/smarthalo/app/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Lbike/smarthalo/app/MainApplication;->getUserManagersComponent()Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object p0

    return-object p0
.end method

.method public static injectAuthenticationActivity(Lbike/smarthalo/app/onboarding/OnboardingActivity;)V
    .locals 1

    .line 69
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getMainApplication(Landroid/app/Activity;)Lbike/smarthalo/app/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/MainApplication;->getAuthenticationComponent()Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;->inject(Lbike/smarthalo/app/onboarding/OnboardingActivity;)V

    return-void
.end method
