.class Lcom/instabug/library/internal/video/d/h;
.super Lcom/instabug/library/internal/video/d/c;
.source "VideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private e:Lcom/instabug/library/internal/video/d/g;

.field private f:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/g;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/internal/video/d/c;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/h;->e:Lcom/instabug/library/internal/video/d/g;

    return-void
.end method


# virtual methods
.method protected a()Landroid/media/MediaFormat;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/h;->e:Lcom/instabug/library/internal/video/d/g;

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/g;->e()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/media/MediaCodec;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/internal/video/d/h;->f:Landroid/view/Surface;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoEncoder create input surface: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/h;->f:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/h;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/library/internal/video/d/h;->f:Landroid/view/Surface;

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/instabug/library/internal/video/d/c;->d()V

    return-void
.end method

.method f()Landroid/view/Surface;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/h;->f:Landroid/view/Surface;

    const-string v1, "doesn\'t prepare()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method
