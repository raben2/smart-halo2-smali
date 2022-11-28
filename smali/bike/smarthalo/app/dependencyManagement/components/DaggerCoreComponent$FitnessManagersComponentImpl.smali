.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FitnessManagersComponentImpl"
.end annotation


# instance fields
.field private fitnessCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

.field private provideFitnessCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideStravaCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;"
        }
    .end annotation
.end field

.field private stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

.field final synthetic this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

.field private userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    invoke-direct {p0, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->initialize(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 747
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)V

    return-void
.end method

.method private getFitnessCloudManager()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
    .locals 7

    .line 765
    new-instance v6, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 766
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 767
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 768
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 769
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 770
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    return-object v6
.end method

.method private initialize(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)V
    .locals 8

    .line 775
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->fitnessCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    .line 776
    new-instance p1, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    invoke-direct {p1}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    .line 777
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 781
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 782
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 783
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 784
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 785
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 786
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 787
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 779
    invoke-static/range {v0 .. v7}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;

    move-result-object p1

    .line 778
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 788
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->fitnessCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 792
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 793
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 795
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 796
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 790
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;

    move-result-object p1

    .line 789
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 797
    new-instance p1, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    invoke-direct {p1}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    .line 798
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 802
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 803
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 804
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 805
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 806
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 807
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 800
    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;

    move-result-object p1

    .line 799
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectDailyRidesActivity(Lbike/smarthalo/app/activities/DailyRidesActivity;)Lbike/smarthalo/app/activities/DailyRidesActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 901
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 902
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 901
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectFitnessStorageManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 903
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 904
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/services/JobServiceCreator;

    .line 903
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectJobServiceCreator(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/services/JobServiceCreator;)V

    .line 905
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 906
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 905
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 907
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 908
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 907
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DailyRidesActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectDeleteRideJobService(Lbike/smarthalo/app/services/DeleteRideJobService;)Lbike/smarthalo/app/services/DeleteRideJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 929
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->getFitnessCloudManager()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    move-result-object v0

    .line 928
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/DeleteRideJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V

    return-object p1
.end method

.method private injectFitnessCurrentViewPresenter(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 876
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 877
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 876
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 878
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 879
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    .line 878
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 880
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 881
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 880
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 882
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 883
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 882
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 884
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 885
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 884
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 886
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 887
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 886
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 888
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 889
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 888
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 890
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 891
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 890
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectFitnessStorageManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 892
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 893
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 892
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 894
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 895
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 894
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectFitnessMainViewFragment(Llayout/FitnessMainViewFragment;)Llayout/FitnessMainViewFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 858
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 859
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 858
    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectFitnessCloudManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 860
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 861
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 860
    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 862
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 863
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 862
    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectUserStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 864
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 865
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 864
    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectSettingsStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 866
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 867
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 866
    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectFitnessStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 868
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 869
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 868
    invoke-static {p1, v0}, Llayout/FitnessMainViewFragment_MembersInjector;->injectAppStorageManager(Llayout/FitnessMainViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    return-object p1
.end method

.method private injectLifetimeMetricsManager(Lbike/smarthalo/app/managers/LifetimeMetricsManager;)Lbike/smarthalo/app/managers/LifetimeMetricsManager;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 935
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 936
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 935
    invoke-static {p1, v0}, Lbike/smarthalo/app/managers/LifetimeMetricsManager_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/managers/LifetimeMetricsManager;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    return-object p1
.end method

.method private injectPastRidesJobService(Lbike/smarthalo/app/services/PastRidesJobService;)Lbike/smarthalo/app/services/PastRidesJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 921
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 922
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 921
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/PastRidesJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/PastRidesJobService;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    return-object p1
.end method

.method private injectRidesUploadJobService(Lbike/smarthalo/app/services/RidesUploadJobService;)Lbike/smarthalo/app/services/RidesUploadJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 915
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->getFitnessCloudManager()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    move-result-object v0

    .line 914
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/RidesUploadJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/RidesUploadJobService;Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V

    return-object p1
.end method

.method private injectStravaUploadJobService(Lbike/smarthalo/app/services/StravaUploadJobService;)Lbike/smarthalo/app/services/StravaUploadJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 943
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->getFitnessCloudManager()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    move-result-object v0

    .line 942
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/StravaUploadJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/StravaUploadJobService;Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V

    return-object p1
.end method

.method private injectUpdateRideJobService(Lbike/smarthalo/app/services/UpdateRideJobService;)Lbike/smarthalo/app/services/UpdateRideJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 950
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->getFitnessCloudManager()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    move-result-object v0

    .line 949
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/UpdateRideJobService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/UpdateRideJobService;Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/activities/DailyRidesActivity;)V
    .locals 0

    .line 822
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectDailyRidesActivity(Lbike/smarthalo/app/activities/DailyRidesActivity;)Lbike/smarthalo/app/activities/DailyRidesActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/managers/LifetimeMetricsManager;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectLifetimeMetricsManager(Lbike/smarthalo/app/managers/LifetimeMetricsManager;)Lbike/smarthalo/app/managers/LifetimeMetricsManager;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectFitnessCurrentViewPresenter(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/DeleteRideJobService;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectDeleteRideJobService(Lbike/smarthalo/app/services/DeleteRideJobService;)Lbike/smarthalo/app/services/DeleteRideJobService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/PastRidesJobService;)V
    .locals 0

    .line 832
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectPastRidesJobService(Lbike/smarthalo/app/services/PastRidesJobService;)Lbike/smarthalo/app/services/PastRidesJobService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/RidesUploadJobService;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectRidesUploadJobService(Lbike/smarthalo/app/services/RidesUploadJobService;)Lbike/smarthalo/app/services/RidesUploadJobService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/StravaUploadJobService;)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectStravaUploadJobService(Lbike/smarthalo/app/services/StravaUploadJobService;)Lbike/smarthalo/app/services/StravaUploadJobService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/UpdateRideJobService;)V
    .locals 0

    .line 852
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectUpdateRideJobService(Lbike/smarthalo/app/services/UpdateRideJobService;)Lbike/smarthalo/app/services/UpdateRideJobService;

    return-void
.end method

.method public inject(Llayout/FitnessMainViewFragment;)V
    .locals 0

    .line 812
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;->injectFitnessMainViewFragment(Llayout/FitnessMainViewFragment;)Llayout/FitnessMainViewFragment;

    return-void
.end method
