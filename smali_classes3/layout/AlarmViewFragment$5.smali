.class Llayout/AlarmViewFragment$5;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Lbike/smarthalo/app/models/AlarmUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment;->onSeverityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AlarmViewFragment;

.field final synthetic val$isAggressive:Z


# direct methods
.method constructor <init>(Llayout/AlarmViewFragment;Z)V
    .locals 0

    .line 231
    iput-object p1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    iput-boolean p2, p0, Llayout/AlarmViewFragment$5;->val$isAggressive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V
    .locals 4

    .line 234
    sget-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    if-ne p1, v0, :cond_0

    .line 235
    iget-object p1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    iget-object p1, p1, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    iget-boolean v0, p0, Llayout/AlarmViewFragment$5;->val$isAggressive:Z

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->toggleIsAlarmAggressive(Z)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    iget-boolean v0, p0, Llayout/AlarmViewFragment$5;->val$isAggressive:Z

    invoke-static {p1, v0}, Llayout/AlarmViewFragment;->access$400(Llayout/AlarmViewFragment;Z)V

    .line 238
    iget-object p1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    invoke-static {p1}, Llayout/AlarmViewFragment;->access$000(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p1

    const v0, 0x7f110048

    if-eqz p1, :cond_1

    iget-object p1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    invoke-static {p1}, Llayout/AlarmViewFragment;->access$000(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object p1

    iget-object p1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    .line 240
    invoke-virtual {p1}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f11004a

    const v2, 0x7f110049

    new-instance v3, Llayout/AlarmViewFragment$5$1;

    invoke-direct {v3, p0}, Llayout/AlarmViewFragment$5$1;-><init>(Llayout/AlarmViewFragment$5;)V

    .line 239
    invoke-static {p1, v0, v1, v2, v3}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 253
    iget-object v1, p0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    .line 256
    invoke-virtual {v1}, Llayout/AlarmViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 253
    invoke-static {v0, p1, v1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :goto_0
    return-void
.end method
