.class public interface abstract Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;
.super Ljava/lang/Object;
.source "CoreComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;,
        Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract add(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;
.end method

.method public abstract add(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;
.end method

.method public abstract add(Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;
.end method

.method public abstract add(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;
.end method

.method public abstract add(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;
.end method

.method public abstract addAuthenticationComponent()Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;
.end method

.method public abstract addCentralServiceComponent()Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;
.end method

.method public abstract inject(Lbike/smarthalo/app/MainApplication;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/LaunchActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/TapCodeActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/activities/TouchInputsActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/navigation/SHDirectionService;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/permissions/PermissionsActivity;)V
.end method

.method public abstract inject(Lbike/smarthalo/app/services/TokenRefreshJobService;)V
.end method

.method public abstract inject(Llayout/AlarmViewFragment;)V
.end method

.method public abstract inject(Llayout/AssistantViewFragment;)V
.end method

.method public abstract inject(Llayout/LeftDrawerLayout;)V
.end method

.method public abstract inject(Llayout/LightViewFragment;)V
.end method
