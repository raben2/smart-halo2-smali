.class Llayout/AlarmViewFragment$4;
.super Ljava/util/TimerTask;
.source "AlarmViewFragment.java"


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

    .line 216
    iput-object p1, p0, Llayout/AlarmViewFragment$4;->this$0:Llayout/AlarmViewFragment;

    iput-boolean p2, p0, Llayout/AlarmViewFragment$4;->val$isAggressive:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Llayout/AlarmViewFragment$4;->this$0:Llayout/AlarmViewFragment;

    .line 222
    invoke-virtual {v0}, Llayout/AlarmViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110040

    const/4 v2, 0x0

    .line 219
    invoke-static {v1, v2, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    .line 224
    iget-object v0, p0, Llayout/AlarmViewFragment$4;->this$0:Llayout/AlarmViewFragment;

    iget-boolean v1, p0, Llayout/AlarmViewFragment$4;->val$isAggressive:Z

    invoke-static {v0, v1}, Llayout/AlarmViewFragment;->access$400(Llayout/AlarmViewFragment;Z)V

    return-void
.end method
