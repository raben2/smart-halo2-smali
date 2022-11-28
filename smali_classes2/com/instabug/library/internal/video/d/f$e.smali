.class Lcom/instabug/library/internal/video/d/f$e;
.super Landroid/os/Handler;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/d/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/f;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SF_SWITCH_NO_DEFAULT",
            "SF_SWITCH_FALLTHROUGH"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->a(Lcom/instabug/library/internal/video/d/f;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->b(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->b(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/internal/video/d/f$d;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->c(Lcom/instabug/library/internal/video/d/f;)V

    .line 15
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->d(Lcom/instabug/library/internal/video/d/f;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->b(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/f;->b(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/instabug/library/internal/video/d/f$d;->a(Ljava/lang/Throwable;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/internal/video/d/f;->a(Lcom/instabug/library/internal/video/d/f;Lcom/instabug/library/internal/video/d/f$d;)Lcom/instabug/library/internal/video/d/f$d;

    .line 20
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$e;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/f;->e(Lcom/instabug/library/internal/video/d/f;)V

    :cond_4
    :goto_0
    return-void
.end method
