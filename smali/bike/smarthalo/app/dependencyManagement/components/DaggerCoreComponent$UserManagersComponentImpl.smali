.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserManagersComponentImpl"
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
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-direct {p0, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->initialize(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 603
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)V

    return-void
.end method

.method private initialize(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)V
    .locals 7

    .line 614
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    .line 615
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 619
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 620
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 621
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 622
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 623
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 624
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 617
    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;

    move-result-object p1

    .line 616
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectBasePresenter(Lbike/smarthalo/app/presenters/BasePresenter;)Lbike/smarthalo/app/presenters/BasePresenter;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 696
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 697
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 696
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 698
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 699
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    .line 698
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 700
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 701
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 700
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 702
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 703
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 702
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 704
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 705
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 704
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 706
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 707
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 706
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    return-object p1
.end method

.method private injectBaseViewModel(Lbike/smarthalo/app/ViewModels/BaseViewModel;)Lbike/smarthalo/app/ViewModels/BaseViewModel;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 689
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 690
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 689
    invoke-static {p1, v0}, Lbike/smarthalo/app/ViewModels/BaseViewModel_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/ViewModels/BaseViewModel;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    return-object p1
.end method

.method private injectDeviceConnectionJobService(Lbike/smarthalo/app/services/DeviceConnectionJobService;)Lbike/smarthalo/app/services/DeviceConnectionJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 728
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 729
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 728
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/DeviceConnectionJobService_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/services/DeviceConnectionJobService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    return-object p1
.end method

.method private injectMainActivity(Lbike/smarthalo/app/activities/MainActivity;)Lbike/smarthalo/app/activities/MainActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 669
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 670
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 669
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 671
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 672
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    .line 671
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectOkHttpClient(Lbike/smarthalo/app/activities/MainActivity;Lokhttp3/OkHttpClient;)V

    .line 673
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 674
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 673
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 675
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 676
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3000(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    .line 675
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectPowerSavingManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V

    return-object p1
.end method

.method private injectProfileActivity(Lbike/smarthalo/app/profile/ProfileActivity;)Lbike/smarthalo/app/profile/ProfileActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 735
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 736
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 735
    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 737
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 738
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 737
    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 739
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 740
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/services/JobServiceCreator;

    .line 739
    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectJobServiceCreator(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/services/JobServiceCreator;)V

    .line 741
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 742
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 741
    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectScanResultsActivity(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/app/activities/ScanResultsActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 682
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 683
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 682
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectUserJobService(Lbike/smarthalo/app/services/UserJobService;)Lbike/smarthalo/app/services/UserJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 713
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 714
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 713
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/UserJobService_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/services/UserJobService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    return-object p1
.end method

.method private injectUserSettingsJobService(Lbike/smarthalo/app/services/UserSettingsJobService;)Lbike/smarthalo/app/services/UserSettingsJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 720
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 721
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 720
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/UserSettingsJobService_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/services/UserSettingsJobService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/ViewModels/BaseViewModel;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectBaseViewModel(Lbike/smarthalo/app/ViewModels/BaseViewModel;)Lbike/smarthalo/app/ViewModels/BaseViewModel;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectMainActivity(Lbike/smarthalo/app/activities/MainActivity;)Lbike/smarthalo/app/activities/MainActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectScanResultsActivity(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/app/activities/ScanResultsActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/presenters/BasePresenter;)V
    .locals 0

    .line 644
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectBasePresenter(Lbike/smarthalo/app/presenters/BasePresenter;)Lbike/smarthalo/app/presenters/BasePresenter;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/profile/ProfileActivity;)V
    .locals 0

    .line 664
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectProfileActivity(Lbike/smarthalo/app/profile/ProfileActivity;)Lbike/smarthalo/app/profile/ProfileActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/DeviceConnectionJobService;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectDeviceConnectionJobService(Lbike/smarthalo/app/services/DeviceConnectionJobService;)Lbike/smarthalo/app/services/DeviceConnectionJobService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/UserJobService;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectUserJobService(Lbike/smarthalo/app/services/UserJobService;)Lbike/smarthalo/app/services/UserJobService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/UserSettingsJobService;)V
    .locals 0

    .line 654
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;->injectUserSettingsJobService(Lbike/smarthalo/app/services/UserSettingsJobService;)Lbike/smarthalo/app/services/UserSettingsJobService;

    return-void
.end method
