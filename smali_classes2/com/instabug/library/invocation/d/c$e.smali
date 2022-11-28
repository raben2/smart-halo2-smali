.class Lcom/instabug/library/invocation/d/c$e;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/c;->a(Landroid/app/Activity;II)V
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
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->C(Lcom/instabug/library/invocation/d/c;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->t(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->t(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$k;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/library/invocation/d/c$k;->stop()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;Z)Z

    .line 7
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->z(Lcom/instabug/library/invocation/d/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$e;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->c(Lcom/instabug/library/invocation/d/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
