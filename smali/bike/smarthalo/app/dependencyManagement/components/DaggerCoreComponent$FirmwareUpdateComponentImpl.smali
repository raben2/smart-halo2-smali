.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FirmwareUpdateComponentImpl"
.end annotation


# instance fields
.field private firmwareCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

.field private provideFirmwareCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    invoke-direct {p0, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->initialize(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)V

    return-void
.end method

.method private initialize(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)V
    .locals 4

    .line 1115
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->firmwareCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    .line 1116
    iget-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->firmwareCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1120
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1121
    invoke-static {v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1122
    invoke-static {v2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1123
    invoke-static {v3}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 1118
    invoke-static {p1, v0, v1, v2, v3}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;

    move-result-object p1

    .line 1117
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->provideFirmwareCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectDFUActivity(Lbike/smarthalo/app/activities/DFUActivity;)Lbike/smarthalo/app/activities/DFUActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1133
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->provideFirmwareCloudManagerProvider:Ljavax/inject/Provider;

    .line 1134
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    .line 1133
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectFirmwareCloudManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;)V

    .line 1135
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1136
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 1135
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 1137
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1138
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 1137
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectAnalyticManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/activities/DFUActivity;)V
    .locals 0

    .line 1128
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;->injectDFUActivity(Lbike/smarthalo/app/activities/DFUActivity;)Lbike/smarthalo/app/activities/DFUActivity;

    return-void
.end method
