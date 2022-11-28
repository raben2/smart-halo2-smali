.class Lcom/instabug/library/internal/video/VideoPlayerFragment$c;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/VideoPlayerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/VideoPlayerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment$c;->a:Lcom/instabug/library/internal/video/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/VideoPlayerFragment$c;->a:Lcom/instabug/library/internal/video/VideoPlayerFragment;

    invoke-static {p1}, Lcom/instabug/library/internal/video/VideoPlayerFragment;->access$000(Lcom/instabug/library/internal/video/VideoPlayerFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method
