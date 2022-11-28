.class public Lbike/smarthalo/app/presenters/DFUPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "DFUPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "DFUPresenter"


# instance fields
.field private appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

.field private dfuStateSubscription:Lio/reactivex/disposables/Disposable;

.field private firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

.field private serviceController:Lno/nordicsemi/android/dfu/DfuServiceController;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    .line 50
    iput-object p3, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    .line 51
    iput-object p4, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 53
    new-instance p2, Lbike/smarthalo/app/presenters/DFUPresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/DFUPresenter$1;-><init>(Lbike/smarthalo/app/presenters/DFUPresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/DFUPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 36
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/DFUPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->subscribeToDfuStateUpdates()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$Presenter;
    .locals 1

    .line 73
    new-instance v0, Lbike/smarthalo/app/presenters/DFUPresenter;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/presenters/DFUPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    return-object v0
.end method

.method private clearDfuStateSubscription()V
    .locals 1

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private handleDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 6

    .line 125
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$sdk$models$FirmwareType:[I

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleDfuState SH2_STM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_1
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleDfuState SH2_NRF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleDfuState SH1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v1, :cond_2

    .line 143
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUStarted(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    goto :goto_1

    .line 146
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iget-object v2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUReady(Lbike/smarthalo/app/models/dfu/DfuAvailability;Ljava/lang/String;)V

    .line 151
    :cond_2
    :goto_1
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 191
    :pswitch_3
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFULowBatteryError(Z)V

    goto/16 :goto_3

    .line 187
    :pswitch_4
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {v0, v2, v2}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUError(ZZ)V

    goto/16 :goto_3

    .line 183
    :pswitch_5
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUError(ZZ)V

    goto :goto_3

    .line 179
    :pswitch_6
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v3, "HAS_INSTALLED_GOLDEN_FIRMWARE"

    invoke-interface {v0, v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 180
    iget-object v3, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v4, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v5, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v4, v5, :cond_5

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-interface {v3, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUCompleted(Z)V

    goto :goto_3

    .line 176
    :pswitch_7
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDeviceDisconnecting()V

    goto :goto_3

    .line 170
    :pswitch_8
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v0, v1, :cond_6

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iget-object v2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUReady(Lbike/smarthalo/app/models/dfu/DfuAvailability;Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :pswitch_9
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUProgressChanged(I)V

    goto :goto_3

    .line 164
    :pswitch_a
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onFirmwareDownloaded()V

    goto :goto_3

    .line 161
    :pswitch_b
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onFirmwareDownloading()V

    goto :goto_3

    .line 155
    :pswitch_c
    iget v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    if-gtz v0, :cond_6

    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq v0, v1, :cond_6

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iget-object v2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUReady(Lbike/smarthalo/app/models/dfu/DfuAvailability;Ljava/lang/String;)V

    .line 195
    :cond_6
    :goto_3
    :pswitch_d
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic lambda$aCmdf2uKGPwaNGJCKTC0bLPCqRE(Lbike/smarthalo/app/presenters/DFUPresenter;Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DFUPresenter;->handleDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method public static synthetic lambda$subscribeToDfuStateUpdates$0(Lbike/smarthalo/app/presenters/DFUPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->onDfuError()V

    return-void
.end method

.method private onDfuError()V
    .locals 3

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->context:Landroid/content/Context;

    const-string v1, "Error in dfu transfer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private performNextDFUStep()V
    .locals 3

    .line 244
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUError(ZZ)V

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onDFUStarted(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    .line 250
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->performNextDfuStep()V

    return-void
.end method

.method private subscribeToDfuStateUpdates()V
    .locals 3

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->clearDfuStateSubscription()V

    .line 111
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 112
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveDfuState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 113
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 114
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$aCmdf2uKGPwaNGJCKTC0bLPCqRE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$aCmdf2uKGPwaNGJCKTC0bLPCqRE;-><init>(Lbike/smarthalo/app/presenters/DFUPresenter;)V

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$-bPchEPIS5wVPj9gl4IxDAhUiNI;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DFUPresenter$-bPchEPIS5wVPj9gl4IxDAhUiNI;-><init>(Lbike/smarthalo/app/presenters/DFUPresenter;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelDFU(Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->InvalidFileError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    .line 236
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->completeDFU()V

    .line 237
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onCloseDFU()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 239
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->askCancelConfirmation()V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onCloseDFU()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onProgressBtnPressed()V
    .locals 3

    .line 201
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_5

    .line 214
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->performNextDFUStep()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "HAS_INSTALLED_GOLDEN_FIRMWARE"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 220
    iget-object v1, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showTouchOnboarding()V

    .line 222
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "HAS_INSTALLED_GOLDEN_FIRMWARE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->completeDFU()V

    .line 226
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;->onCloseDFU()V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->dfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_5

    .line 208
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->performNextDFUStep()V

    goto :goto_0

    .line 203
    :cond_4
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->performNextDFUStep()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onViewCreated()V
    .locals 1

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method public onViewDestroyed()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DFUPresenter;->clearDfuStateSubscription()V

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->serviceController:Lno/nordicsemi/android/dfu/DfuServiceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/DfuServiceController;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DFUPresenter;->serviceController:Lno/nordicsemi/android/dfu/DfuServiceController;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/DfuServiceController;->abort()V

    :cond_0
    return-void
.end method

.method public onViewPaused()V
    .locals 0

    return-void
.end method

.method public onViewResumed()V
    .locals 0

    return-void
.end method
