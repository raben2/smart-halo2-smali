.class public Lcom/instabug/apm/j/b;
.super Ljava/lang/Object;
.source "APMChoreographerMonitorImpl.java"

# interfaces
.implements Lcom/instabug/apm/j/a;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x10
.end annotation


# instance fields
.field private a:Landroid/view/Choreographer;

.field private b:J

.field private c:Lcom/instabug/apm/f/e/a;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/instabug/apm/f/e/a;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/instabug/apm/j/b;->b:J

    .line 7
    iput-object p1, p0, Lcom/instabug/apm/j/b;->c:Lcom/instabug/apm/f/e/a;

    .line 8
    iput p2, p0, Lcom/instabug/apm/j/b;->d:F

    .line 9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/j/b;->a:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/j/b;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/j/b;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public doFrame(J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/j/b;->b:J

    sub-long v0, p1, v0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/instabug/apm/j/b;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    long-to-float v2, v0

    iget v3, p0, Lcom/instabug/apm/j/b;->d:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/instabug/apm/j/b;->c:Lcom/instabug/apm/f/e/a;

    invoke-interface {v2, v0, v1}, Lcom/instabug/apm/f/e/a;->a(J)V

    .line 7
    :cond_0
    iput-wide p1, p0, Lcom/instabug/apm/j/b;->b:J

    .line 8
    iget-object p1, p0, Lcom/instabug/apm/j/b;->a:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
