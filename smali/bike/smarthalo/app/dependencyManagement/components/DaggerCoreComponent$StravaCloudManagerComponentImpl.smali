.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StravaCloudManagerComponentImpl"
.end annotation


# instance fields
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
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    invoke-direct {p0, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->initialize(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)V

    return-void
.end method

.method private initialize(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)V
    .locals 8

    .line 1037
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    .line 1038
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1042
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1043
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1044
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1045
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1046
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1047
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1048
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 1040
    invoke-static/range {v0 .. v7}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;

    move-result-object p1

    .line 1039
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 1049
    new-instance p1, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    invoke-direct {p1}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    .line 1050
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1054
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1055
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1056
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1057
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1058
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1059
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 1052
    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;

    move-result-object p1

    .line 1051
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectLinkedAccountsActivity(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)Lbike/smarthalo/app/activities/LinkedAccountsActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1074
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 1074
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectStravaCloudManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;)V

    .line 1076
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1077
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    .line 1076
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 1078
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1079
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 1078
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectStravaSettingsPresenter(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)Lbike/smarthalo/app/presenters/StravaSettingsPresenter;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1086
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 1087
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 1086
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 1088
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1089
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    .line 1088
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 1090
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1091
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 1090
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 1092
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1093
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 1092
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 1094
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1095
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 1094
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 1096
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1097
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 1096
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/presenters/BasePresenter;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 1098
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 1099
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 1098
    invoke-static {p1, v0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter_MembersInjector;->injectStravaCloudManagerContract(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->injectLinkedAccountsActivity(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)Lbike/smarthalo/app/activities/LinkedAccountsActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V
    .locals 0

    .line 1069
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;->injectStravaSettingsPresenter(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)Lbike/smarthalo/app/presenters/StravaSettingsPresenter;

    return-void
.end method
