.class Llayout/statusBar/StatusBarLayout$9;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->initialize(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/StatusBarLayout;

.field final synthetic val$listener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarLayout;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$9;->this$0:Llayout/statusBar/StatusBarLayout;

    iput-object p2, p0, Llayout/statusBar/StatusBarLayout$9;->val$listener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnedOff()Z
    .locals 1

    .line 335
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$9;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$700(Llayout/statusBar/StatusBarLayout;)V

    .line 336
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$9;->val$listener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    invoke-interface {v0}, Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;->onTurnedOff()Z

    move-result v0

    return v0
.end method

.method public onTurnedOn()Z
    .locals 1

    .line 329
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$9;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$600(Llayout/statusBar/StatusBarLayout;)V

    .line 330
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$9;->val$listener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    invoke-interface {v0}, Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;->onTurnedOn()Z

    move-result v0

    return v0
.end method
