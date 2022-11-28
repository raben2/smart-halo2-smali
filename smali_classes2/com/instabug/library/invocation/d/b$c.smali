.class Lcom/instabug/library/invocation/d/b$c;
.super Ljava/lang/Object;
.source "FloatingButtonInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/b$c;->a:Lcom/instabug/library/invocation/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$c;->a:Lcom/instabug/library/invocation/d/b;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/b;->c()V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$c;->a:Lcom/instabug/library/invocation/d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/library/invocation/d/b;->a(Lcom/instabug/library/invocation/d/b;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$c;->a:Lcom/instabug/library/invocation/d/b;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/b;->a()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/instabug/library/invocation/d/b$c$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/d/b$c$a;-><init>(Lcom/instabug/library/invocation/d/b$c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
