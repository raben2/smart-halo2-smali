.class Llayout/AlarmViewFragment$6;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment;->cancelSeverityToggle(Z)V
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

    .line 268
    iput-object p1, p0, Llayout/AlarmViewFragment$6;->this$0:Llayout/AlarmViewFragment;

    iput-boolean p2, p0, Llayout/AlarmViewFragment$6;->val$isAggressive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    iget-object v0, p0, Llayout/AlarmViewFragment$6;->this$0:Llayout/AlarmViewFragment;

    invoke-static {v0}, Llayout/AlarmViewFragment;->access$600(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->severitySwitch:Llayout/SettingsSwitch;

    iget-boolean v1, p0, Llayout/AlarmViewFragment$6;->val$isAggressive:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llayout/SettingsSwitch;->setIsLeft(ZZ)V

    return-void
.end method
