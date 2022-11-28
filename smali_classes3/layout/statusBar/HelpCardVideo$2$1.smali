.class Llayout/statusBar/HelpCardVideo$2$1;
.super Ljava/lang/Object;
.source "HelpCardVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/HelpCardVideo$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llayout/statusBar/HelpCardVideo$2;


# direct methods
.method constructor <init>(Llayout/statusBar/HelpCardVideo$2;)V
    .locals 0

    .line 62
    iput-object p1, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    iget-object v0, v0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llayout/statusBar/HelpCardVideo;->access$002(Llayout/statusBar/HelpCardVideo;Ljava/util/Timer;)Ljava/util/Timer;

    .line 66
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    iget-object v0, v0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    invoke-virtual {v0}, Llayout/statusBar/HelpCardVideo;->requestFocus()Z

    .line 67
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    iget-object v0, v0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llayout/statusBar/HelpCardVideo;->setZOrderMediaOverlay(Z)V

    .line 68
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    iget-object v0, v0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    invoke-virtual {v0, v1}, Llayout/statusBar/HelpCardVideo;->setZOrderOnTop(Z)V

    .line 70
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    iget-object v0, v0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    invoke-virtual {v0}, Llayout/statusBar/HelpCardVideo;->start()V

    .line 71
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2$1;->this$1:Llayout/statusBar/HelpCardVideo$2;

    iget-object v0, v0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llayout/statusBar/HelpCardVideo;->setVisibility(I)V

    return-void
.end method
