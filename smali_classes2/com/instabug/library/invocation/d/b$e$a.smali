.class Lcom/instabug/library/invocation/d/b$e$a;
.super Ljava/lang/Object;
.source "FloatingButtonInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/invocation/d/b$e;
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

.field final synthetic e:Lcom/instabug/library/invocation/d/b$e;


# direct methods
.method private constructor <init>(Lcom/instabug/library/invocation/d/b$e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/b$e$a;->e:Lcom/instabug/library/invocation/d/b$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/instabug/library/invocation/d/b$e$a;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/invocation/d/b$e;Lcom/instabug/library/invocation/d/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/d/b$e$a;-><init>(Lcom/instabug/library/invocation/d/b$e;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$e$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(FF)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/instabug/library/invocation/d/b$e$a;->b:F

    .line 4
    iput p2, p0, Lcom/instabug/library/invocation/d/b$e$a;->c:F

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/instabug/library/invocation/d/b$e$a;->d:J

    .line 6
    iget-object p1, p0, Lcom/instabug/library/invocation/d/b$e$a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/b$e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/b$e$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/b$e$a;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/invocation/d/b$e$a;->a(FF)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$e$a;->e:Lcom/instabug/library/invocation/d/b$e;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instabug/library/invocation/d/b$e$a;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget v2, p0, Lcom/instabug/library/invocation/d/b$e$a;->b:F

    iget-object v3, p0, Lcom/instabug/library/invocation/d/b$e$a;->e:Lcom/instabug/library/invocation/d/b$e;

    iget-object v4, v3, Lcom/instabug/library/invocation/d/b$e;->h:Lcom/instabug/library/invocation/d/b;

    iget v5, v4, Lcom/instabug/library/invocation/d/b;->b:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    mul-float v2, v2, v0

    .line 4
    iget v6, p0, Lcom/instabug/library/invocation/d/b$e$a;->c:F

    iget v4, v4, Lcom/instabug/library/invocation/d/b;->c:I

    int-to-float v4, v4

    sub-float/2addr v6, v4

    mul-float v6, v6, v0

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 5
    invoke-virtual {v3, v2, v4}, Lcom/instabug/library/invocation/d/b$e;->a(II)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$e$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
