.class Llayout/AssistantViewFragment$3;
.super Ljava/lang/Object;
.source "AssistantViewFragment.java"

# interfaces
.implements Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/AssistantViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AssistantViewFragment;


# direct methods
.method constructor <init>(Llayout/AssistantViewFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Llayout/AssistantViewFragment$3;->this$0:Llayout/AssistantViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnedOff()Z
    .locals 1

    .line 169
    iget-object v0, p0, Llayout/AssistantViewFragment$3;->this$0:Llayout/AssistantViewFragment;

    invoke-static {v0}, Llayout/AssistantViewFragment;->access$300(Llayout/AssistantViewFragment;)Z

    move-result v0

    return v0
.end method

.method public onTurnedOn()Z
    .locals 1

    .line 164
    iget-object v0, p0, Llayout/AssistantViewFragment$3;->this$0:Llayout/AssistantViewFragment;

    invoke-static {v0}, Llayout/AssistantViewFragment;->access$200(Llayout/AssistantViewFragment;)Z

    move-result v0

    return v0
.end method
