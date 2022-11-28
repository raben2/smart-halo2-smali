.class public final Lbike/smarthalo/app/services/SHCentralService_MembersInjector;
.super Ljava/lang/Object;
.source "SHCentralService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/services/SHCentralService;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;"
        }
    .end annotation
.end field

.field private final appStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;"
        }
    .end annotation
.end field

.field private final firmwareCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field private final fitnessCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;"
        }
    .end annotation
.end field

.field private final fitnessStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final jobServiceCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final powerSavingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final userCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p2, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p3, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p4, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p5, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p6, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p7, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p8, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p9, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->retrofitProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p10, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->firmwareCloudManagerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p11, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p12, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p13, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->powerSavingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/services/SHCentralService;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v14, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectAppStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-void
.end method

.method public static injectAuthenticationManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    return-void
.end method

.method public static injectFirmwareCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    return-void
.end method

.method public static injectFitnessCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-void
.end method

.method public static injectFitnessStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-void
.end method

.method public static injectJobServiceCreator(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/services/JobServiceCreator;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    return-void
.end method

.method public static injectKeyManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/KeyManager;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    return-void
.end method

.method public static injectPowerSavingManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->powerSavingManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    return-void
.end method

.method public static injectRetrofit(Lbike/smarthalo/app/services/SHCentralService;Lretrofit2/Retrofit;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static injectSettingsStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method

.method public static injectUserCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-void
.end method

.method public static injectUserStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/services/SHCentralService;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    .line 109
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectFitnessStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 111
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->fitnessCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectFitnessCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;)V

    .line 113
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 114
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 115
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectRetrofit(Lbike/smarthalo/app/services/SHCentralService;Lretrofit2/Retrofit;)V

    .line 116
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->firmwareCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectFirmwareCloudManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;)V

    .line 117
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 118
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/services/JobServiceCreator;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectJobServiceCreator(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/services/JobServiceCreator;)V

    .line 119
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->powerSavingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectPowerSavingManager(Lbike/smarthalo/app/services/SHCentralService;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/SHCentralService_MembersInjector;->injectMembers(Lbike/smarthalo/app/services/SHCentralService;)V

    return-void
.end method
