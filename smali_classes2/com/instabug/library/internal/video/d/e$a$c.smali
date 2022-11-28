.class Lcom/instabug/library/internal/video/d/e$a$c;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/d/c;

.field final synthetic b:I

.field final synthetic c:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic d:Lcom/instabug/library/internal/video/d/e$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/e$a;Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e$a$c;->d:Lcom/instabug/library/internal/video/d/e$a;

    iput-object p2, p0, Lcom/instabug/library/internal/video/d/e$a$c;->a:Lcom/instabug/library/internal/video/d/c;

    iput p3, p0, Lcom/instabug/library/internal/video/d/e$a$c;->b:I

    iput-object p4, p0, Lcom/instabug/library/internal/video/d/e$a$c;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$a$c;->d:Lcom/instabug/library/internal/video/d/e$a;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/e$a;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$a$c;->d:Lcom/instabug/library/internal/video/d/e$a;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/e$a;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e$a$c;->a:Lcom/instabug/library/internal/video/d/c;

    iget v2, p0, Lcom/instabug/library/internal/video/d/e$a$c;->b:I

    iget-object v3, p0, Lcom/instabug/library/internal/video/d/e$a$c;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/internal/video/d/c$b;->a(Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method
