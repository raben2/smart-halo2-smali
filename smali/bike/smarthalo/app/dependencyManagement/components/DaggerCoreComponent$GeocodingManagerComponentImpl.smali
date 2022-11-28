.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeocodingManagerComponentImpl"
.end annotation


# instance fields
.field private geocodingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;

.field private providesGeocodingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    invoke-direct {p0, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->initialize(Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 955
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)V

    return-void
.end method

.method private initialize(Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)V
    .locals 1

    .line 966
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->geocodingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;

    .line 967
    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->geocodingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 970
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 969
    invoke-static {p1, v0}, Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule_ProvidesGeocodingManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule_ProvidesGeocodingManagerFactory;

    move-result-object p1

    .line 968
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->providesGeocodingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectMapViewFragment(Llayout/MapViewFragment;)Llayout/MapViewFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 990
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->providesGeocodingManagerProvider:Ljavax/inject/Provider;

    .line 991
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    .line 990
    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectGeocodingManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V

    .line 992
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 993
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 992
    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectAppStorageManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 994
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 995
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 994
    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectUserStorageManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 996
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 997
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 996
    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/MapViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectSHDirectionService(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/navigation/SHDirectionService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1003
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1004
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    .line 1003
    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 1005
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1006
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    move-result-object v0

    .line 1005
    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService_MembersInjector;->injectGeocodingManager(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;)V

    .line 1007
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1008
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 1007
    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectSearchFragment(Llayout/SearchFragment;)Llayout/SearchFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1014
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->providesGeocodingManagerProvider:Ljavax/inject/Provider;

    .line 1015
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    .line 1014
    invoke-static {p1, v0}, Llayout/SearchFragment_MembersInjector;->injectGeocodingManager(Llayout/SearchFragment;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V

    .line 1016
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1017
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 1016
    invoke-static {p1, v0}, Llayout/SearchFragment_MembersInjector;->injectAnalyticsManager(Llayout/SearchFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 980
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->injectSHDirectionService(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/navigation/SHDirectionService;

    return-void
.end method

.method public inject(Llayout/MapViewFragment;)V
    .locals 0

    .line 975
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->injectMapViewFragment(Llayout/MapViewFragment;)Llayout/MapViewFragment;

    return-void
.end method

.method public inject(Llayout/SearchFragment;)V
    .locals 0

    .line 985
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;->injectSearchFragment(Llayout/SearchFragment;)Llayout/SearchFragment;

    return-void
.end method
