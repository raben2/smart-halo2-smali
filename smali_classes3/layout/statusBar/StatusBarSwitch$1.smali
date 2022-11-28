.class Llayout/statusBar/StatusBarSwitch$1;
.super Ljava/lang/Object;
.source "StatusBarSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarSwitch;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/StatusBarSwitch;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarSwitch;)V
    .locals 0

    .line 107
    iput-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 111
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-virtual {p1}, Llayout/statusBar/StatusBarSwitch;->setOn()V

    .line 112
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-static {p1}, Llayout/statusBar/StatusBarSwitch;->access$000(Llayout/statusBar/StatusBarSwitch;)Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    move-result-object p1

    invoke-interface {p1}, Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;->onTurnedOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Llayout/statusBar/StatusBarSwitch;->setCheckedNoEvent(Z)V

    .line 116
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-virtual {p1}, Llayout/statusBar/StatusBarSwitch;->setOff()V

    .line 117
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-static {p1}, Llayout/statusBar/StatusBarSwitch;->access$000(Llayout/statusBar/StatusBarSwitch;)Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    move-result-object p1

    invoke-interface {p1}, Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;->onTurnedOff()Z

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-virtual {p1}, Llayout/statusBar/StatusBarSwitch;->setOff()V

    .line 121
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-static {p1}, Llayout/statusBar/StatusBarSwitch;->access$000(Llayout/statusBar/StatusBarSwitch;)Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    move-result-object p1

    invoke-interface {p1}, Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;->onTurnedOff()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Llayout/statusBar/StatusBarSwitch;->setCheckedNoEvent(Z)V

    .line 125
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-virtual {p1}, Llayout/statusBar/StatusBarSwitch;->setOn()V

    .line 126
    iget-object p1, p0, Llayout/statusBar/StatusBarSwitch$1;->this$0:Llayout/statusBar/StatusBarSwitch;

    invoke-static {p1}, Llayout/statusBar/StatusBarSwitch;->access$000(Llayout/statusBar/StatusBarSwitch;)Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    move-result-object p1

    invoke-interface {p1}, Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;->onTurnedOn()Z

    :cond_1
    :goto_0
    return-void
.end method
