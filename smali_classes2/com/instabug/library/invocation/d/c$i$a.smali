.class Lcom/instabug/library/invocation/d/c$i$a;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/invocation/d/c$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:F

.field private c:F

.field private d:J

.field final synthetic e:Lcom/instabug/library/invocation/d/c$i;


# direct methods
.method private constructor <init>(Lcom/instabug/library/invocation/d/c$i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$i$a;->e:Lcom/instabug/library/invocation/d/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$i$a;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/invocation/d/c$i;Lcom/instabug/library/invocation/d/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/d/c$i$a;-><init>(Lcom/instabug/library/invocation/d/c$i;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(FF)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/instabug/library/invocation/d/c$i$a;->b:F

    .line 4
    iput p2, p0, Lcom/instabug/library/invocation/d/c$i$a;->c:F

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/instabug/library/invocation/d/c$i$a;->d:J

    .line 6
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$i$a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c$i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c$i$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c$i$a;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/invocation/d/c$i$a;->a(FF)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i$a;->e:Lcom/instabug/library/invocation/d/c$i;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instabug/library/invocation/d/c$i$a;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4
    iget v2, p0, Lcom/instabug/library/invocation/d/c$i$a;->b:F

    iget-object v3, p0, Lcom/instabug/library/invocation/d/c$i$a;->e:Lcom/instabug/library/invocation/d/c$i;

    iget-object v3, v3, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v3}, Lcom/instabug/library/invocation/d/c;->k(Lcom/instabug/library/invocation/d/c;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    .line 5
    iget v3, p0, Lcom/instabug/library/invocation/d/c$i$a;->c:F

    iget-object v4, p0, Lcom/instabug/library/invocation/d/c$i$a;->e:Lcom/instabug/library/invocation/d/c$i;

    iget-object v4, v4, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v4}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    .line 6
    iget-object v4, p0, Lcom/instabug/library/invocation/d/c$i$a;->e:Lcom/instabug/library/invocation/d/c$i;

    iget-object v5, v4, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v5}, Lcom/instabug/library/invocation/d/c;->k(Lcom/instabug/library/invocation/d/c;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    float-to-int v2, v5

    iget-object v5, p0, Lcom/instabug/library/invocation/d/c$i$a;->e:Lcom/instabug/library/invocation/d/c$i;

    iget-object v5, v5, Lcom/instabug/library/invocation/d/c$i;->x:Lcom/instabug/library/invocation/d/c;

    invoke-static {v5}, Lcom/instabug/library/invocation/d/c;->n(Lcom/instabug/library/invocation/d/c;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v4, v2, v3}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$i$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
