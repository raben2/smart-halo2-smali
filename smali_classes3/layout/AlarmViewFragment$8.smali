.class Llayout/AlarmViewFragment$8;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/AlarmViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AlarmViewFragment;


# direct methods
.method constructor <init>(Llayout/AlarmViewFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Llayout/AlarmViewFragment$8;->this$0:Llayout/AlarmViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnedOff()Z
    .locals 1

    .line 338
    iget-object v0, p0, Llayout/AlarmViewFragment$8;->this$0:Llayout/AlarmViewFragment;

    invoke-virtual {v0}, Llayout/AlarmViewFragment;->onAlarmTurnedOff()Z

    move-result v0

    return v0
.end method

.method public onTurnedOn()Z
    .locals 1

    .line 333
    iget-object v0, p0, Llayout/AlarmViewFragment$8;->this$0:Llayout/AlarmViewFragment;

    invoke-virtual {v0}, Llayout/AlarmViewFragment;->onAlarmTurnedOn()Z

    move-result v0

    return v0
.end method
