.class Llayout/statusBar/HelpCardVideo$2;
.super Ljava/util/TimerTask;
.source "HelpCardVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/HelpCardVideo;->playVideo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/HelpCardVideo;


# direct methods
.method constructor <init>(Llayout/statusBar/HelpCardVideo;)V
    .locals 0

    .line 59
    iput-object p1, p0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Llayout/statusBar/HelpCardVideo$2;->this$0:Llayout/statusBar/HelpCardVideo;

    invoke-static {v0}, Llayout/statusBar/HelpCardVideo;->access$100(Llayout/statusBar/HelpCardVideo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Llayout/statusBar/HelpCardVideo$2$1;

    invoke-direct {v1, p0}, Llayout/statusBar/HelpCardVideo$2$1;-><init>(Llayout/statusBar/HelpCardVideo$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
