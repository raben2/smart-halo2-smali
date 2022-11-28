.class Lcom/instabug/library/invocation/d/c$a;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/invocation/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->b(Lcom/instabug/library/invocation/d/c;)J

    move-result-wide v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->j(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->j(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$i;

    move-result-object v0

    .line 6
    invoke-static {v2, v3}, Lcom/instabug/library/internal/media/AudioPlayer;->getFormattedDurationText(J)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v1, v4}, Lcom/instabug/library/l/f/b/c;->a(Ljava/lang/String;Z)V

    :cond_0
    const-wide/16 v0, 0x7530

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 11
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->t(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$k;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/invocation/d/c$k;->stop()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$a;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->z(Lcom/instabug/library/invocation/d/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
