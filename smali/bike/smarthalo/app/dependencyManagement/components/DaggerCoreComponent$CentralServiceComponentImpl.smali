.class final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CentralServiceComponentImpl"
.end annotation


# instance fields
.field private firmwareCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

.field private fitnessCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

.field private provideFirmwareCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->initialize()V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)V

    return-void
.end method

.method private initialize()V
    .locals 9

    .line 1166
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    .line 1167
    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->userCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1171
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1172
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1173
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1174
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1175
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1176
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 1169
    invoke-static/range {v1 .. v7}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;

    move-result-object v0

    .line 1168
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 1177
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->fitnessCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    .line 1178
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    .line 1179
    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->stravaCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1183
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1184
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1185
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1186
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1187
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1188
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1189
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 1181
    invoke-static/range {v1 .. v8}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;

    move-result-object v0

    .line 1180
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 1190
    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->fitnessCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1194
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1195
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideStravaCloudManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1197
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1198
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 1192
    invoke-static/range {v1 .. v6}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;

    move-result-object v0

    .line 1191
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 1199
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->firmwareCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    .line 1200
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->firmwareCloudManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1204
    invoke-static {v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1205
    invoke-static {v2}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1206
    invoke-static {v3}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1207
    invoke-static {v4}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 1202
    invoke-static {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;

    move-result-object v0

    .line 1201
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideFirmwareCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectSHCentralService(Lbike/smarthalo/app/services/SHCentralService;)Lbike/smarthalo/app/services/SHCentralService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1217
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1218
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 1217
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 1219
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1220
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 1219
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 1221
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1222
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 1221
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectFitnessStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 1223
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1224
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 1223
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 1225
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideUserCloudManagerProvider:Ljavax/inject/Provider;

    .line 1226
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 1225
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 1227
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideFitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 1228
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 1227
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 1229
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1230
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    .line 1229
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 1231
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1232
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 1231
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 1233
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1234
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    .line 1233
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectRetrofit(Lbike/smarthalo/app/services/SHCentralService;Lretrofit2/Retrofit;)V

    .line 1235
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->provideFirmwareCloudManagerProvider:Ljavax/inject/Provider;

    .line 1236
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    .line 1235
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectFirmwareCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;)V

    .line 1237
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1238
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 1237
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 1239
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1240
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/services/JobServiceCreator;

    .line 1239
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectJobServiceCreator(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/services/JobServiceCreator;)V

    .line 1241
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->this$0:Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    .line 1242
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->access$3000(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    .line 1241
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectPowerSavingManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/services/SHCentralService;)V
    .locals 0

    .line 1212
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;->injectSHCentralService(Lbike/smarthalo/app/services/SHCentralService;)Lbike/smarthalo/app/services/SHCentralService;

    return-void
.end method
