.class Llayout/LightViewFragment$3;
.super Ljava/lang/Object;
.source "LightViewFragment.java"

# interfaces
.implements Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/LightViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/LightViewFragment;


# direct methods
.method constructor <init>(Llayout/LightViewFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Llayout/LightViewFragment$3;->this$0:Llayout/LightViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnedOff()Z
    .locals 2

    .line 137
    iget-object v0, p0, Llayout/LightViewFragment$3;->this$0:Llayout/LightViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llayout/LightViewFragment;->access$300(Llayout/LightViewFragment;Z)V

    return v1
.end method

.method public onTurnedOn()Z
    .locals 2

    .line 131
    iget-object v0, p0, Llayout/LightViewFragment$3;->this$0:Llayout/LightViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llayout/LightViewFragment;->access$300(Llayout/LightViewFragment;Z)V

    const/4 v0, 0x0

    return v0
.end method
