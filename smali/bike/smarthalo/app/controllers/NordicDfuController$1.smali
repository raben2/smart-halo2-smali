.class Lbike/smarthalo/app/controllers/NordicDfuController$1;
.super Ljava/lang/Object;
.source "NordicDfuController.java"

# interfaces
.implements Lno/nordicsemi/android/dfu/DfuProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/NordicDfuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/NordicDfuController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDfuCompleted$0(Lbike/smarthalo/app/controllers/NordicDfuController$1;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-static {v0, v1}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$200(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    return-void
.end method


# virtual methods
.method public onDeviceConnected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeviceConnecting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeviceDisconnected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeviceDisconnecting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDfuAborted(Ljava/lang/String;)V
    .locals 1

    .line 199
    invoke-static {}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Aborted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDfuCompleted(Ljava/lang/String;)V
    .locals 3

    .line 188
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$102(Lbike/smarthalo/app/controllers/NordicDfuController;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$200(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    .line 190
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$300(Lbike/smarthalo/app/controllers/NordicDfuController;)V

    .line 191
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$1$4oHvNDRdUszF2h0MhcqBAWhxbpg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$1$4oHvNDRdUszF2h0MhcqBAWhxbpg;-><init>(Lbike/smarthalo/app/controllers/NordicDfuController$1;)V

    const-wide/32 v1, 0xea60

    .line 192
    invoke-static {v1, v2, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 191
    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$402(Lbike/smarthalo/app/controllers/NordicDfuController;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 194
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$500(Lbike/smarthalo/app/controllers/NordicDfuController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestConnectToKnownDevice(Landroid/content/Context;)V

    return-void
.end method

.method public onDfuProcessStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDfuProcessStarting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEnablingDfuMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 204
    invoke-static {}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DFU error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with type : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with message : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 p1, p3, 0x1000

    const/16 p2, 0x1003

    if-ne p1, p2, :cond_0

    .line 206
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$700(Lbike/smarthalo/app/controllers/NordicDfuController;)Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    move-result-object p1

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->invalidFileError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$700(Lbike/smarthalo/app/controllers/NordicDfuController;)Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    move-result-object p1

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->defaultError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    .line 211
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$500(Lbike/smarthalo/app/controllers/NordicDfuController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestConnectToKnownDevice(Landroid/content/Context;)V

    return-void
.end method

.method public onFirmwareValidating(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Ljava/lang/String;IFFII)V
    .locals 0

    .line 168
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController$1;->this$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    sget-object p3, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-static {p1, p3, p2}, Lbike/smarthalo/app/controllers/NordicDfuController;->access$000(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/dfu/DfuStepType;I)V

    return-void
.end method
