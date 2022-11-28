.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthenticationComponentImpl"
.end annotation


# instance fields
.field private provideUserCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

.field private userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->initialize()V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 1247
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)V

    return-void
.end method

.method private initialize()V
    .locals 8

    .line 1258
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    .line 1259
    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1263
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1264
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1265
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1266
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1267
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1268
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 1261
    invoke-static/range {v1 .. v7}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;

    move-result-object v0

    .line 1260
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectOnboardingActivity(Lbike/smarthalo/app/onboarding/OnboardingActivity;)Lbike/smarthalo/app/onboarding/OnboardingActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1278
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 1279
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 1278
    invoke-static {p1, v0}, Lbike/smarthalo/app/onboarding/OnboardingActivity_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/onboarding/OnboardingActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 1280
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1281
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 1280
    invoke-static {p1, v0}, Lbike/smarthalo/app/onboarding/OnboardingActivity_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/onboarding/OnboardingActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 1282
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1283
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    .line 1282
    invoke-static {p1, v0}, Lbike/smarthalo/app/onboarding/OnboardingActivity_MembersInjector;->injectConnectivityManager(Lbike/smarthalo/app/onboarding/OnboardingActivity;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V

    .line 1284
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1285
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 1284
    invoke-static {p1, v0}, Lbike/smarthalo/app/onboarding/OnboardingActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/onboarding/OnboardingActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/onboarding/OnboardingActivity;)V
    .locals 0

    .line 1273
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;->injectOnboardingActivity(Lbike/smarthalo/app/onboarding/OnboardingActivity;)Lbike/smarthalo/app/onboarding/OnboardingActivity;

    return-void
.end method
