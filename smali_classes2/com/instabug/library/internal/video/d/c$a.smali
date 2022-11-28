.class Lcom/instabug/library/internal/video/d/c$a;
.super Landroid/media/MediaCodec$Callback;
.source "BaseEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-interface {p1, v0, p2}, Lcom/instabug/library/internal/video/d/d$a;->a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/internal/video/d/c$b;->a(Lcom/instabug/library/internal/video/d/c;I)V

    :cond_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-virtual {p1, v0, p2, p3}, Lcom/instabug/library/internal/video/d/c$b;->a(Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/c$a;->a:Lcom/instabug/library/internal/video/d/c;

    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/internal/video/d/c$b;->a(Lcom/instabug/library/internal/video/d/c;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
