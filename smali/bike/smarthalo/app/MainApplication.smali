.class public Lbike/smarthalo/app/MainApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "MainApplication.java"


# static fields
.field public static final ORS_KEY:Ljava/lang/String; = "58d904a497c67e00015b45fcb878e75a21a74a10797fb75848d52cfc"


# instance fields
.field private authenticationComponent:Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;

.field private centralServiceComponent:Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;

.field private coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

.field private firmwareUpdateComponent:Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;

.field private fitnessManagersComponent:Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

.field private geocodingManagerComponent:Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

.field keyManager:Lbike/smarthalo/app/managers/KeyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private stravaCloudManagerComponent:Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

.field private userManagersComponent:Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private initializeComponents()V
    .locals 2

    .line 117
    invoke-static {}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->builder()Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->contextModule(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;-><init>()V

    .line 119
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->sHApiModule(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;-><init>()V

    .line 120
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->gPXParserModule(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;-><init>()V

    .line 121
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->keyManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;-><init>()V

    .line 122
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->appStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;-><init>()V

    .line 123
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->fitnessStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->settingsStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;-><init>()V

    .line 125
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->userStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;-><init>()V

    .line 126
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->connectivityModule(Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->analyticsModule(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->build()Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;-><init>()V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->add(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->userManagersComponent:Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;-><init>()V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->add(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->fitnessManagersComponent:Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    .line 132
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;-><init>()V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->add(Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->geocodingManagerComponent:Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    .line 133
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;-><init>()V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->add(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->stravaCloudManagerComponent:Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

    .line 134
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    new-instance v1, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    invoke-direct {v1}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;-><init>()V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->add(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->firmwareUpdateComponent:Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;

    .line 135
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    invoke-interface {v0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->addCentralServiceComponent()Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->centralServiceComponent:Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;

    .line 136
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    invoke-interface {v0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->addAuthenticationComponent()Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/MainApplication;->authenticationComponent:Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;

    return-void
.end method

.method static synthetic lambda$null$0(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/SentryEvent;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$onCreate$1(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    const-string v0, "https://bdd076167e88460c9197ae1831a69cb2@o552949.ingest.sentry.io/5679496"

    .line 89
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;->INSTANCE:Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    return-void
.end method


# virtual methods
.method public getAuthenticationComponent()Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;
    .locals 1

    .line 164
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->authenticationComponent:Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;

    return-object v0
.end method

.method public getCentralServiceComponent()Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;
    .locals 1

    .line 160
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->centralServiceComponent:Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;

    return-object v0
.end method

.method public getCoreComponent()Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;
    .locals 1

    .line 168
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    return-object v0
.end method

.method public getFirmwareUpdateComponent()Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;
    .locals 1

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->firmwareUpdateComponent:Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;

    return-object v0
.end method

.method public getFitnessManagersComponent()Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;
    .locals 1

    .line 148
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->fitnessManagersComponent:Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    return-object v0
.end method

.method public getGeocodingManagerComponent()Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;
    .locals 1

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->geocodingManagerComponent:Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    return-object v0
.end method

.method public getStravaCloudManagerComponent()Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;
    .locals 1

    .line 140
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->stravaCloudManagerComponent:Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

    return-object v0
.end method

.method public getUserManagersComponent()Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;
    .locals 1

    .line 144
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->userManagersComponent:Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 81
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 83
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 84
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 85
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isDevelopmentBuildConfig()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 86
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isDevelopmentBuildConfig()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 88
    sget-object v0, Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;->INSTANCE:Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;

    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 93
    invoke-static {p0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/RealmInitializer;->initializeRealm()V

    .line 95
    invoke-direct {p0}, Lbike/smarthalo/app/MainApplication;->initializeComponents()V

    .line 97
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->coreComponent:Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/MainApplication;)V

    .line 99
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 100
    invoke-virtual {v0}, Lbike/smarthalo/app/managers/KeyManager;->getInstabugProdKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 101
    invoke-virtual {v0}, Lbike/smarthalo/app/managers/KeyManager;->getInstabugDevKey()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    new-instance v1, Lcom/instabug/library/Instabug$Builder;

    invoke-direct {v1, p0, v0}, Lcom/instabug/library/Instabug$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    new-array v0, v2, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    sget-object v3, Lcom/instabug/library/invocation/InstabugInvocationEvent;->NONE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 105
    invoke-virtual {v1, v0}, Lcom/instabug/library/Instabug$Builder;->setInvocationEvents([Lcom/instabug/library/invocation/InstabugInvocationEvent;)Lcom/instabug/library/Instabug$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/instabug/library/Instabug$Builder;->build()Lcom/instabug/library/Instabug;

    .line 108
    sget-object v0, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;->DISABLED:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setWelcomeMessageState(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    .line 109
    sget-object v0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/crash/CrashReporting;->setState(Lcom/instabug/library/Feature$State;)V

    .line 110
    new-array v0, v2, [I

    aput v4, v0, v4

    invoke-static {v0}, Lcom/instabug/bug/BugReporting;->setReportTypes([I)V

    .line 112
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->initializeNotificationChannels(Landroid/content/Context;)V

    return-void
.end method
