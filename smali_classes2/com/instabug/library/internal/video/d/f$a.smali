.class Lcom/instabug/library/internal/video/d/f$a;
.super Landroid/media/projection/MediaProjection$Callback;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/d/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f$a;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$a;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/f;->a()V

    return-void
.end method
